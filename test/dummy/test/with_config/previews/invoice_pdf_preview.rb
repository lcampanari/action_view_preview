class InvoicePdfPreview < ActionViewPreview::Preview
  def invoice_pdf
    PdfService.html_for_invoice_pdf  
  end
end