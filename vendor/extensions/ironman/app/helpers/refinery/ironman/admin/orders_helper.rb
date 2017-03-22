module Refinery
  module Ironman
    module Admin
      module OrdersHelper
        include ActionView::Helpers::NumberHelper

        def do_export(orders, dates)
          begin
            io = StringIO.new
            file_name = "orders (#{dates[0]} - #{dates[1]}).xls"
            workbook = WriteXLSX.new(io)
            titles = ['To', 'From', 'Phone', 'Date', 'Address', 'IP Address', 'Detected Country', 'Receive News?', 'Vehicle', 'Stockist', 'Comments', 'Qty', 'Total']
            col = 0
            row = 1
            page = 1
            worksheet = workbook.add_worksheet("page #{page}")

            # create title row
            format = workbook.add_format
            format.set_bold
            format.set_color('black')
            format.set_align('center')

            titles.each do |title|
              worksheet.write(0, col, title, format)
              col += 1
            end

            # Add order datas
            text_format = workbook.add_format
            text_format.set_text_wrap(true)
            text_format.set_align('top')

            orders.each_with_index do |order, index|
              if !order.blank?
              # activate data persheet
              # change number 5 for the limit data persheet
              if index % 20 == 0 and index != 0
                page += 1
                col = 0
                worksheet = workbook.add_worksheet("page #{page}")

                titles.each do |title|
                  worksheet.write(0, col, title, format)
                  col += 1
                end
                row = 1
              end

              worksheet.write(row, 0, Refinery::Core.config.site_name, text_format)
              worksheet.write(row, 1, "#{order.name} [#{order.email}]", text_format)
              worksheet.write(row, 2, order.phone || "-", text_format)
              worksheet.write(row, 3, l(Date.parse(order.created_at.to_s), :format => :long), text_format)
              worksheet.write(row, 4, order.full_street_address, text_format)
              worksheet.write(row, 5, order.ip_address, text_format)
              worksheet.write(row, 6, order.detected_country.present? ? order.detected_country['data']['country_name'] : "", text_format)
              worksheet.write(row, 7, order.receive_news ? "Yes" : "No", text_format)
              worksheet.write(row, 8, order.vehicle_name_full || "N/A", text_format)
              worksheet.write(row, 9, order.stockist.present? ? order.stockist.name : "N/A", text_format)
              worksheet.write(row, 10, order.comments.gsub(/[\r]/, ''), text_format)
              lines = order_products(order.lines)
              worksheet.write(row, 11, lines[0], text_format)
              worksheet.write(row, 12, lines[1], text_format)
              row+=1
            end
          end
            workbook.close

            return {:status => true, :book => io.string, :name => file_name}
          rescue => ex
            logger.warn "There was an error exporting orders.\n#{$!}\n"
            return {:status => false, :error => ex.message}
          end
        end

        def order_products(lines)
          qty = ""
          total = ""
          lines.each do |line|
            qty += "(#{line.product.name}) ~ #{line.quantity} \n"
            total += "(#{line.product.name}) ~ #{number_to_currency(line.net_amount)} \n"
          end

          return [qty, total]
        end
      end
    end
  end
end
