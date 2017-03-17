package com.tjnu.po;

/**
 * Created by 11517 on 2017/3/16.
 */
public class PdfUrls {
    private int pdfUrlsId;
    private int pdfId;
    private String pdfUrl;
    private String pdfUrlDetail;

    @Override
    public String toString() {
        return "PdfUrls{" +
                "pdfUrlsId=" + pdfUrlsId +
                ", pdfId=" + pdfId +
                ", pdfUrl='" + pdfUrl + '\'' +
                ", pdfUrlDetail='" + pdfUrlDetail + '\'' +
                '}';
    }

    public int getPdfUrlsId() {
        return pdfUrlsId;
    }

    public void setPdfUrlsId(int pdfUrlsId) {
        this.pdfUrlsId = pdfUrlsId;
    }

    public int getPdfId() {
        return pdfId;
    }

    public void setPdfId(int pdfId) {
        this.pdfId = pdfId;
    }

    public String getPdfUrl() {
        return pdfUrl;
    }

    public void setPdfUrl(String pdfUrl) {
        this.pdfUrl = pdfUrl;
    }

    public String getPdfUrlDetail() {
        return pdfUrlDetail;
    }

    public void setPdfUrlDetail(String pdfUrlDetail) {
        this.pdfUrlDetail = pdfUrlDetail;
    }
}
