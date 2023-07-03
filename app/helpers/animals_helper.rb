module AnimalsHelper
  def animal_species_icon(species)
    case species.downcase
    when 'mammal'
      content_tag(:i, '', class: 'fas fa-paw animal-icon')
    when 'lizard'
      content_tag(:i, '', class: 'fas fa-dragon animal-icon')
    else
      content_tag(:i, '', class: 'fas fa-question animal-icon')
    end
  end
end
