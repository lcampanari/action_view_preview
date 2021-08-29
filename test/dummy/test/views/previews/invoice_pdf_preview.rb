class InvoicePdfPreview < ActionViewPreview::Base
  def invoice_pdf
    PdfService.html_for_invoice_pdf  
  end
end