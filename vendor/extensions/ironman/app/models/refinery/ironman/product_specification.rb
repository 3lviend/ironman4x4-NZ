module Refinery
  module Ironman
    class ProductSpecification < Refinery::Core::BaseModel
      validates_presence_of :title
      belongs_to :product, :class_name => '::Refinery::Ironman::Product', :touch => true
      belongs_to :category, :class_name => '::Refinery::Ironman::Category', :touch => true

      after_initialize do
        self.show_on_product_detail = true if self.show_on_product_detail.nil?
        self.show_on_product_popover = true if self.show_on_product_popover.nil?
      end

      def calculate_lift_estimate(specifications, hash_value)
        @specifications = specifications
        @hash_value = hash_value
          
        @specifications.reject! { |s| s.blank? }
        @spec = @specifications.collect(&:value).uniq

        #Range for Lift: ['0"', "0mm"], ['1-2"', "1mm - 50mm"], ['3-4"', "51mm - 100mm"], ['5-6"', "101mm - 150mm"]
        if !@spec.blank?          
          (0..@spec.count-1).each do |s|
            if @spec[s].gsub("mm","").to_i == 0
              @hash_value.first.merge!({id: '0"', name:'0mm'})
            elsif @spec[s].gsub("mm","").to_i <= 50
              @hash_value.first.merge!({id: '1-2"', name: '1mm - 50mm'})
            elsif (@spec[s].gsub("mm","").to_i >= 51) && (@spec[s].gsub("mm","").to_i <= 100)
              @hash_value.first.merge!({id: '3-4"', name: '51mm - 100mm'})
            elsif (@spec[s].gsub("mm","").to_i >= 101) && (@spec[s].gsub("mm","").to_i <= 150)
              @hash_value.first.merge!({id: '5-6"', name:'101mm - 150mm'})
            end
          end
        end

        return @hash_value
      end

      def calculate_front_spring_specification(specifications, total_weights)
        @specifications = specifications

        @spec = @specifications.collect(&:value).uniq
        sort_list = []
        @spec.each do |sp|
          sort_list << sp.split("-")[1].gsub("kg","").to_i
        end

        if total_weights == 0
          max_value = sort_list.sort.first.to_s
        else
          max_value = sort_list.sort.last.to_s
        end

        if max_value.to_i >= total_weights
          product_id = ""

          @specifications.each do |s|
            product_id = s.product_id if s.value.split("-")[1].include?(max_value) 
          end
        end

        return product_id
      end
    end
  end
end
