
module PdfService
  def self.html_for_invoice_pdf
    locals = { some_data: 'Hello world!' }
    ApplicationController.render :template => 'invoices/pdf', :formats => [:html], :locals => locals
  end
end