require 'pry'
class Market

  attr_reader :name,
              :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    names_of_vendors = []
    @vendors.each do |vendor|
      names_of_vendors << vendor.name
    end
    names_of_vendors
  end

  def vendor_items
    names_of_vendors = []
    @vendors.each do |vendor|
      # binding.pry
      names_of_vendors << vendor.inventory.keys
    end
    names_of_vendors.flatten
    # binding.pry
  end

  def sorted_item_list
    sorted_list = []
    vendor_items.sort_by do |vendor|
      sorted_list << vendor
    end
    sorted_list.sort
  end


  def vendors_that_sell(name)
    specific_vendors = []
    @vendors.each do |vendor|
       # binding.pry
      if  vendor.inventory.keys == name
          specific_vendors << vendor
        end
      end
    specific_vendors
  end

  def total_inventory
    @vendors.inventory
  end

end
