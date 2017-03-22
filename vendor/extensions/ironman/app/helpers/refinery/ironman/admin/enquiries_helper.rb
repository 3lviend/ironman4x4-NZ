module Refinery
  module Ironman
    module Admin
      module EnquiriesHelper
        def do_export(enquiries, dates)
            io = StringIO.new
            titles = ['To', 'From', 'Phone', 'Date', 'Address', 'Enquiry Type', 'Receive News?', 'Vehicle', 'Comments']
            file_name = "enquiries (#{dates[0]} - #{dates[1]}).xls"
            workbook = WriteXLSX.new(io)

            # create new array - for methods
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

            # Add enquiry datas
            text_format = workbook.add_format
            text_format.set_text_wrap(true)
            text_format.set_align('top')

          begin
            enquiries.each_with_index do |enquiry, index|
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
              worksheet.write(row, 1, "#{enquiry.name} [#{enquiry.email}]", text_format)
              worksheet.write(row, 2, enquiry.phone || "-", text_format)
              worksheet.write(row, 3, l(Date.parse(enquiry.created_at.to_s), :format => :long), text_format)
              worksheet.write(row, 4, enquiry.full_street_address, text_format)
              worksheet.write(row, 5, enquiry.enquiry_type, text_format)
              worksheet.write(row, 6, enquiry.receive_news ? 'Yes' : 'No', text_format)
              worksheet.write(row, 7, enquiry.vehicle_name_full || "N/A", text_format)
              worksheet.write_string(row, 8, enquiry.message.gsub(/[\r]/, ''))
              row += 1
            end

            # end
            workbook.close

            return {:status => true, :book => io.string, :name => file_name}
          rescue => ex
            logger.warn "There was an error exporting enquiries.\n#{$!}\n"
            return {:status => false, :file_path => "", :error => ex.message}
          end
        end
      end
    end
  end
end
