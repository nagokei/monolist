class RankingsController < ApplicationController
    
  def want
    @wants = Want.group(:item_id).order('count_id desc').limit(10).count(:id) 
    ids = @wants.keys
    items = Item.find(ids)
    @items = items.sort_by{|item| @wants.index(item.id)}
    
    # rank = 0
    # current_count = Float::INFINITY
    # @items.each do | item |
    #   item.name
    #   count = @wants[item.id]
    #   if current_count > count
    #     current_count = count
    #     rank += 1
    #   end
    #   rank
    # end
  end
  
  def have
    
  end
end
