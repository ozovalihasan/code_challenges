# @param {Integer} n
# @param {Integer} m
# @param {Integer[]} group
# @param {Integer[][]} before_items
# @return {Integer[]}
def sort_items(n, m, group, before_items)
  @before_items = before_items
  @items_of_groups, @items_group = define_groups_for_minus_ones(m, group)
  
  @checked_group = {}
  @checked_item = {}
  @result = []

  @items_of_groups.each_with_index do |subgroup, index|
    next if @checked_group[index]
    @checking_group = Set.new
    return [] unless check_subgroup(subgroup, index)
  end

  rearrange_result
end

def rearrange_result
  @result.reverse.group_by {|item| @items_group[item]}.values.reverse.map(&:reverse).flatten(1)
end

def define_groups_for_minus_ones(m, group)
  items_of_groups = []
  
  group_id = m
  items_group = group.map!.with_index do |item_group, item|
            if item_group == -1
              (items_of_groups[group_id] ||= []) << item
              group_id += 1
              group_id - 1
            else
              (items_of_groups[item_group] ||= []) << item
              item_group
            end
          end
  
  items_of_groups.map! {|main_group| main_group ? main_group.to_set : Set.new}

  [items_of_groups, items_group]
end

def check_subgroup(subgroup, group_index)
  return true if @checked_group[group_index]
  
  return false if @checking_group.include? group_index
  @checking_group << group_index

  subgroup.each do |item|
    checking_items = Set.new
    return false unless check_item(item, group_index, checking_items)
  end
  @checking_group.delete(group_index)
  
  @checked_group[group_index] = true
end

def check_item(item, group_index, checking_items)
  return false if checking_items.include? item
  checking_items << item
  
  return true if @checked_item[item]
  
  @before_items[item].each do |next_item|
    next_group_index = @items_group[next_item]
  
    if next_group_index == group_index
      return false unless check_item(next_item, group_index, checking_items)
    else
      return false unless check_subgroup(@items_of_groups[next_group_index], next_group_index)
    end
  end
  @result << item

  @checked_item[item] = true
end
