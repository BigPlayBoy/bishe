package com.tjnu.po;

/**
 * Created by 11517 on 2017/3/16.
 */
public class Pdf {
    private int pdfId;
    private String pdfName;
    private String pdfDetail;

    @Override
    public String toString() {
        return "Pdf{" +
                "pdfId=" + pdfId +
                ", pdfName='" + pdfName + '\'' +
                ", pdfDetail='" + pdfDetail + '\'' +
                '}';
    }

    public int getPdfId() {
        return pdfId;
    }

    public void setPdfId(int pdfId) {
        this.pdfId = pdfId;
    }

    public String getPdfName() {
        return pdfName;
    }

    public void setPdfName(String pdfName) {
        this.pdfName = pdfName;
    }

    public String getPdfDetail() {
        return pdfDetail;
    }

    public void setPdfDetail(String pdfDetail) {
        this.pdfDetail = pdfDetail;
    }
}
