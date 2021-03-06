/**
 *
 */
package com.xscj.score.action;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.opensymphony.xwork2.ActionSupport;
import com.xscj.domain.Grade;
import com.xscj.domain.ScoreBySXT;
import com.xscj.domain.SubStudent;
import com.xscj.service.GradeSetUp;
import com.xscj.service.ScoreService;
import com.xscj.service.StuService;
import com.xscj.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.List;


/**
 * @author xxx
 */
public class ScorePrinterSucAction extends ActionSupport {

    /**
     *
     */
    private static final long serialVersionUID = 3406371248132575847L;
    @Autowired
    @Qualifier("scoreServiceImpl")
    private ScoreService scoreService;
    @Autowired
    @Qualifier("stuServiceImpl")
    private StuService stuService;
    @Autowired
    @Qualifier("gradeSetUpImpl")
    private GradeSetUp gradeSetUp;
    private String stuXueHao;
    private String xueqi;
    private String examType;
    private SubStudent subStudent;
    private Grade grade;
    private List<ScoreBySXT> scoreBySXTs;
    private double totalScore;
    private InputStream pdfStream;
    private String fileName;

    public String generateContract() throws Exception {
        if (stuXueHao == null || xueqi == null || examType == null || stuXueHao.trim().equals("") || xueqi.trim().equals("") || examType.trim().equals("") || !Util.isNumeric(stuXueHao) || !Util.isNumeric(xueqi))
            return INPUT;
        this.subStudent = stuService.getSubStudentByXueHao(Integer.parseInt(stuXueHao));
        this.grade = gradeSetUp.getGradeBystuXueHao(Integer.parseInt(stuXueHao));
        this.scoreBySXTs = scoreService.getScoreBySXTs(Integer.parseInt(stuXueHao), Integer.parseInt(xueqi), examType);
        fileName = new String((this.grade.getYear() + "??????" + this.grade.getClassID() + ")???" + this.subStudent.getStuName() + "???" + this.xueqi + "??????" + this.examType + "???????????????" + ".pdf").getBytes(), "ISO8859-1");
        Document document = new Document();
        //BaseFont bfChinese = BaseFont.createFont("/var/lib/openshift/582302b189f5cf7463000038/app-root/repo/src/main/resources/simhei.ttf,1",	BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
        //BaseFont bfChinese = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED);
        BaseFont bfChinese = BaseFont.createFont("STSongStd-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED);
        Font FontChinese = new Font(bfChinese);

        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        PdfWriter.getInstance(document, buffer);
        document.open();
        Paragraph logoText = new Paragraph();
        logoText.setFont(FontChinese);
        //Chunk logo = new Chunk(Image.getInstance(ServletActionContext.getServletContext().getRealPath("/")+"logo.png"),0,-15);
        Chunk logo = new Chunk(Image.getInstance(Util.getPath() + "/logo.png"), 0, -15);
        logoText.add(logo);
        logoText.add("XXX?????????");
        document.add(logoText);
        Paragraph p = new Paragraph("XX??????" + this.grade.getYear() + "???(" + this.grade.getClassID() + ")???" + this.subStudent.getStuName() + "???????????????", FontChinese);
        p.setAlignment(Element.ALIGN_CENTER);
        document.add(p);
        Paragraph p2 = new Paragraph("???" + this.xueqi + "?????? " + this.examType + "??????", FontChinese);
        p2.setAlignment(Element.ALIGN_CENTER);
        document.add(p2);
        document.add(new Paragraph(" "));
        PdfPTable table = new PdfPTable(4);
        PdfPCell cell = new PdfPCell(new Paragraph("????????????", FontChinese));
        cell.setBackgroundColor(BaseColor.CYAN);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(cell);

        cell = new PdfPCell(new Paragraph("????????????", FontChinese));
        cell.setBackgroundColor(BaseColor.CYAN);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(cell);

        cell = new PdfPCell(new Paragraph("????????????", FontChinese));
        cell.setBackgroundColor(BaseColor.CYAN);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(cell);

        cell = new PdfPCell(new Paragraph("????????????", FontChinese));
        cell.setBackgroundColor(BaseColor.CYAN);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(cell);

        for (int i = 0; i < this.scoreBySXTs.size(); i++) {
            table.addCell(new Paragraph(this.scoreBySXTs.get(i).getCourseID()));
            table.addCell(new Paragraph(this.scoreBySXTs.get(i).getCourseName(), FontChinese));
            table.addCell(new Paragraph(this.scoreBySXTs.get(i).getExamTime()));
            table.addCell(new Paragraph(this.scoreBySXTs.get(i).getScore() + "???", FontChinese));
            this.totalScore = this.totalScore + this.scoreBySXTs.get(i).getScore();
        }
        cell = new PdfPCell(new Paragraph("??????", FontChinese));
        cell.setBackgroundColor(BaseColor.CYAN);
        cell.setColspan(3);
        cell.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(cell);
        table.addCell(new Paragraph(this.totalScore + "???", FontChinese));
        document.add(table);
        document.close();

        this.pdfStream = new ByteArrayInputStream(buffer.toByteArray());
        buffer.close();
        return SUCCESS;
    }

    public InputStream getPdfStream() {
        return pdfStream;
    }

    public String getStuXueHao() {
        return stuXueHao;
    }

    public void setStuXueHao(String stuXueHao) {
        this.stuXueHao = stuXueHao;
    }

    public String getXueqi() {
        return xueqi;
    }

    public void setXueqi(String xueqi) {
        this.xueqi = xueqi;
    }

    public String getExamType() {
        return examType;
    }

    public void setExamType(String examType) {
        this.examType = examType;
    }

    public List<ScoreBySXT> getScoreBySXTs() {
        return scoreBySXTs;
    }

    public void setScoreBySXTs(List<ScoreBySXT> scoreBySXTs) {
        this.scoreBySXTs = scoreBySXTs;
    }

    public SubStudent getSubStudent() {
        return subStudent;
    }

    public void setSubStudent(SubStudent subStudent) {
        this.subStudent = subStudent;
    }

    public Grade getGrade() {
        return grade;
    }

    public void setGrade(Grade grade) {
        this.grade = grade;
    }

    public double getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(double totalScore) {
        this.totalScore = totalScore;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }


}
