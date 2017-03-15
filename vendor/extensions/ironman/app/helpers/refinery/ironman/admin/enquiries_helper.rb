module Refinery
  module Ironman
    module Admin
      module EnquiriesHelper
        def do_export(enquiries)
          begin
            io = StringIO.new
            titles = ['To', 'From', 'Phone', 'Date', 'Address', 'Enquiry Type', 'Receive News?', 'Vehicle', 'Comments']
            file_name = "enquiries-#{Time.now.to_i}.xlsx"
            workbook = WriteXLSX.new(io)
            worksheet = workbook.add_worksheet

            # create new array - for methods
            col = 0
            row = 1

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

            enquiries.each_with_index do |enquiry, index|
              worksheet.write(row, 0, Refinery::Core.config.site_name, text_format)
              worksheet.write(row, 1, "#{enquiry.name} [#{enquiry.email}]", text_format)
              worksheet.write(row, 2, enquiry.phone || "-", text_format)
              worksheet.write(row, 3, l(Date.parse(enquiry.created_at.to_s), :format => :long), text_format)
              worksheet.write(row, 4, enquiry.full_street_address, text_format)
              worksheet.write(row, 5, enquiry.enquiry_type, text_format)
              worksheet.write(row, 6, enquiry.receive_news ? 'Yes' : 'No', text_format)
              worksheet.write(row, 7, enquiry.vehicle_name_full || "N/A", text_format)
              worksheet.write(row, 8, enquiry.message.gsub(/[\r]/, ''), text_format)
              row += 1
            end

            # end
            workbook.close

            return {:status => true, :book => io.string, :name => file_name}
          rescue
            logger.warn "There was an error exporting enquiries.\n#{$!}\n"
            return {:status => false, :file_path => ""}
          end
        end
      end
    end
  end
end
