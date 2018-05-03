module ApplicationHelper
  def price_tag(spec)
    price = (spec.computer.total_price - Money.new(spec.component.try(:price))).to_f
    content_tag :p, humanized_money_with_symbol(price), id: "current-price", data: {value: price}
  end

  def component_price_tag(component)
    content_tag :p, "$#{component.price}", data: {
      value: component.price.to_f,
      component_description: component.description,
      component_picture: image_path(component_image_path(component))
    }
  end

  def component_image_path(component)
    component_path(component.category.slug, component.rating)
  end

  def component_path(slug, rating)
    "#{slug}/#{slug}-#{rating}-main.png"
  end

  def label_options(categories)
    options = { class: 'big-label' }

    if categories.include?(session[:user_game_category])
      options[:class] = 'recommended-category'
      options[:data]  = {toggle: "tooltip", placement: "left" }
      options[:title] = "Most suited based on your selection"
    end

    options
  end
end
