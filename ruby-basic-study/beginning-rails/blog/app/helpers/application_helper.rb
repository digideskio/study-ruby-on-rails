module ApplicationHelper
  # Creates a submit button with the given name with a cancel link
  # Accepts two arguments: Form object and the cancel link name
  def submit_or_cancel(form, name='Cancel')
    form.submit + " or " +
        link_to(name, 'javascript:history.go(-1);', :class => 'cancel')
  end

  def language_selector
    if I18n.locale == :ja
      link_to "En", url_for(:locale => 'en')
    else
      link_to "Ja", url_for(:locale => 'ja')
    end
  end

end
