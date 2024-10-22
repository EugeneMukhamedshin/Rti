﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns="urn:schemas-microsoft-com:office:spreadsheet"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:o="urn:schemas-microsoft-com:office:office"
	xmlns:x="urn:schemas-microsoft-com:office:excel"
	xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
	xmlns:html="http://www.w3.org/TR/REC-html40"
	xmlns:rti="urn:rti">

  <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="no"/>

  <xsl:template match="root">

    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Excel.Sheet"</xsl:text>
    </xsl:processing-instruction>

    <?mso-application progid="Excel.Sheet"?>
    <Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:o="urn:schemas-microsoft-com:office:office"
     xmlns:x="urn:schemas-microsoft-com:office:excel"
     xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:html="http://www.w3.org/TR/REC-html40">
      <Styles>
        <Style ss:ID="Default" ss:Name="Normal">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204"/>
          <Interior/>
          <NumberFormat/>
          <Protection/>
        </Style>
        <Style ss:ID="m141518836">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m141518856">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="m141518876">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m141518896">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m141518916">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="m141518936">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m141518956">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m141518976">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="m141518632">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m141518652">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m141518672">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m141518692">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291214248">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214268">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214288">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214308">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214328">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214348">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214368">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213984">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214004">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214044">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214064">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214084">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214104">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214124">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214144">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291214164">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213760">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213780">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213800">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213820">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213860">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213880">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213900">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213920">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213940">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213536">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213556">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213576">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213596">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213616">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213636">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213656">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213312">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213332">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213352">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213372">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213392">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213412">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213432">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213452">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213472">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213024">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213044">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213064">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213084">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213104">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213124">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213144">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213164">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213184">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291213204">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212800">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212820">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212840">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212860">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212880">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212900">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212596">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212616">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212636">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="m291212656">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="m291212676">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="m291212696">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="m291212352">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212372">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212392">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212412">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212452">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212472">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212492">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="m291212512">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="m291212532">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="m291212128">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212148">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212168">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212188">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212208">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212228">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212248">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212268">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212308">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211904">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211924">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211944">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211964">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211984">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212004">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212024">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212044">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291212084">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211680">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211700">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211720">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211740">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211760">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211780">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211456">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211476">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211496">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211516">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211536">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211556">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211332">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211352">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211372">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211392">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291211412">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291210336">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291210356">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291210376">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291210112">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291210132">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291210152">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291210172">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291210212">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291210272">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291210292">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291209888">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209908">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209928">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209948">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209968">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209988">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291210008">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291210028">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291210048">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291210068">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209664">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m291209744">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209764">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209784">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209804">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209824">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209844">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m291209460">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m141520708">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m141520464">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m141520220">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m266358352">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m266358412">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s63">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s64">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s65">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s67">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s68">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s70">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s71">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s72">
          <Alignment ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s74">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s75">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s77">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s78">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
        </Style>
        <Style ss:ID="s80">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s81">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s83">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s84">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s86">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s88">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
        </Style>
        <Style ss:ID="s90">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s91">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s92">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s99">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s100">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s106">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s107">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="s108">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s109">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s110">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s111">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="s112">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s114">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s115">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s116">
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s131">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s132">
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s139">
          <Alignment ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s152">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s160">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s161">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s162">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="s164">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s166">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s168">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s170">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s171">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s173">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s175">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s177">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s180">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s181">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s183">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s184">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s185">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s187">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s188">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s189">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s190">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s192">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s193">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s195">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s199">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s204">
          <Alignment ss:Horizontal="Right" ss:Vertical="Top" ss:WrapText="1"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s207">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s212">
          <Alignment ss:Vertical="Center"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s213">
          <Alignment ss:Vertical="Center"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s215">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s217">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s220">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s225">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s226">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s228">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s229">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s231">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s233">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s235">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s236">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s238">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9"/>
        </Style>
        <Style ss:ID="s241">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s243">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s246">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s248">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s250">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s272">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s274">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s283">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s294">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s300">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s302">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s304">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s306">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s307">
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s309">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s312">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s313">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s315">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s316">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s318">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s320">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s322">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s324">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s329">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s331">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s332">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s334">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s336">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s337">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s377">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s391">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s395">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s410">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s429">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9"/>
        </Style>
        <Style ss:ID="s431">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s432">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s433">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s449">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s450">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s455">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s456">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s486">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s487">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s492">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s493">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="ТТН-1">
        <Table ss:ExpandedColumnCount="17" ss:ExpandedRowCount="66" x:FullColumns="1"
         x:FullRows="1">
          <Column ss:AutoFitWidth="0" ss:Width="51"/>
          <Column ss:AutoFitWidth="0" ss:Width="51.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="59.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="45.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="44.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="144"/>
          <Column ss:Index="9" ss:AutoFitWidth="0" ss:Width="45"/>
          <Column ss:AutoFitWidth="0" ss:Width="11.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="55.5"/>
          <Column ss:Index="13" ss:AutoFitWidth="0" ss:Width="69.75"/>
          <Row ss:AutoFitHeight="0" ss:Height="24">
            <Cell ss:Index="9" ss:MergeAcross="4" ss:StyleID="s63">
              <Data ss:Type="String">Типовая межотраслеая форма №1-т Утверждена постановлением Госкомстата России от 28.11.97 №78</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="13" ss:StyleID="s64">
              <Data ss:Type="String">Коды</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="11" ss:MergeAcross="1" ss:StyleID="s65">
              <Data ss:Type="String">Форма по ОКУД</Data>
            </Cell>
            <Cell ss:StyleID="s67">
              <Data ss:Type="Number">345009</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="4" ss:MergeAcross="5" ss:StyleID="s68">
              <Data ss:Type="String">ТОВАРНО-ТРАНСПОРТНАЯ НАКЛАДНАЯ</Data>
            </Cell>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s70"/>
            <Cell ss:StyleID="s71">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date, 'ddMM\/yy')"/>-<xsl:value-of select="set[@name='Shipments']/Shipment/@SortOrder"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="9" ss:StyleID="s72"/>
            <Cell ss:StyleID="s72"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s74">
              <Data ss:Type="String">Дата составление</Data>
            </Cell>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDateTime(set[@name='Shipments']/Shipment/@Date, 'ddMMyyyy')"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="24">
            <Cell ss:MergeAcross="1" ss:StyleID="s77">
              <Data ss:Type="String">Грузоотправитель</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="s63">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@FullNameWithBankRequisites"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s78">
              <Data ss:Type="String">по ОКПО</Data>
            </Cell>
            <Cell ss:StyleID="s67">
              <Data ss:Type="Number">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Okpo"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25">
            <Cell ss:MergeAcross="11" ss:StyleID="s80">
              <Data ss:Type="String">(полное наименование организации, адрес, банковские реквизиты)</Data>
            </Cell>
            <Cell ss:StyleID="s81"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="24">
            <Cell ss:MergeAcross="1" ss:StyleID="s77">
              <Data ss:Type="String">Грузополучатель</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="s83">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Recipient/@FullNameWithBankRequisites"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s78">
              <Data ss:Type="String">по ОКПО</Data>
            </Cell>
            <Cell ss:StyleID="s84">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Recipient/@Okpo"/>
              </Data>
            </Cell>
            <Cell ss:Index="17" ss:StyleID="s81"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25">
            <Cell ss:MergeAcross="11" ss:StyleID="s80">
              <Data ss:Type="String">(полное наименование организации, адрес, банковские реквизиты)</Data>
            </Cell>
            <Cell ss:StyleID="s81"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="24">
            <Cell ss:MergeAcross="1" ss:StyleID="s86">
              <Data ss:Type="String">Плательщик</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="s88">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@FullNameWithBankRequisites"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s78">
              <Data ss:Type="String">по ОКПО</Data>
            </Cell>
            <Cell ss:StyleID="s84">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Okpo"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25">
            <Cell ss:MergeAcross="11" ss:StyleID="s80">
              <Data ss:Type="String">(полное наименование организации, адрес, банковские реквизиты)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="21">
            <Cell ss:MergeAcross="12" ss:StyleID="s90">
              <Data ss:Type="String">1.ТОВАРНЫЙ РАЗДЕЛ (заполняется грузоотправителем)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="66.75">
            <Cell ss:StyleID="s92">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                <B>
                  Код продукции  <Font html:Size="6">(номенклатур-ный номер)</Font>
                </B>
              </ss:Data>
            </Cell>
            <Cell ss:StyleID="s92">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                <B>Номер прейскура-нта</B>
                <I>
                  <Font
        html:Size="7">и дополнения к нему</Font>
                </I>
              </ss:Data>
            </Cell>
            <Cell ss:StyleID="s92">
              <ss:Data ss:Type="String"
      xmlns="http://www.w3.org/TR/REC-html40">
                <B>
                  Артикул <Font html:Size="7"> </Font><I>
                    <Font
         html:Size="7">или номер по  прескуранту</Font>
                  </I>
                </B>
              </ss:Data>
            </Cell>
            <Cell ss:StyleID="s92">
              <Data ss:Type="String">Количество</Data>
            </Cell>
            <Cell ss:StyleID="s92">
              <Data ss:Type="String">Цена,руб.коп</Data>
            </Cell>
            <Cell ss:StyleID="s92">
              <Data ss:Type="String">Наименование продукции, товара (груза), ТУ, марка, размер, сорт.</Data>
            </Cell>
            <Cell ss:StyleID="s92">
              <Data ss:Type="String">Единица измерения</Data>
            </Cell>
            <Cell ss:StyleID="s92">
              <Data ss:Type="String">Вид упаковки</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m141518632">
              <Data ss:Type="String">Количество мест</Data>
            </Cell>
            <Cell ss:StyleID="s99">
              <Data ss:Type="String">Масса, кг</Data>
            </Cell>
            <Cell ss:StyleID="s92">
              <Data ss:Type="String">Сумма, руб,коп</Data>
            </Cell>
            <Cell ss:StyleID="s92">
              <ss:Data ss:Type="String"
      xmlns="http://www.w3.org/TR/REC-html40">
                <B>Порядковый номер записи</B>
                <I>
                  <Font
        html:Size="7"> по складской картотеке (грузоотправителю, грузополучателю)</Font>
                </I>
              </ss:Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m141518652">
              <Data ss:Type="Number">9</Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">11</Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">12</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s106"/>
            <Cell ss:StyleID="s106"/>
            <Cell ss:StyleID="s106"/>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">
                <xsl:value-of select="sum(set[@name='ShipmentItems']/ShipmentItem/@Count)"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s106"/>
            <Cell ss:StyleID="s106">
              <Data ss:Type="String">Согласно ТН №<xsl:value-of select="set[@name='Shipments']/Shipment/@SortOrder"/> от <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date)"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='ShipmentItems']/ShipmentItem/RequestDetail/Drawing/MeasureUnit/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s106">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='ShipmentItems']/ShipmentItem/@PackType"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m141518672">
              <Data ss:Type="Number">
                <xsl:value-of select="sum(set[@name='ShipmentItems']/ShipmentItem/@CountOfPlaces)"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s100">
              <Data ss:Type="Number">
                <xsl:value-of select="sum(set[@name='ShipmentItems']/ShipmentItem/@NetMass)"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s107">
              <Data ss:Type="Number">
                <xsl:value-of select="sum(set[@name='ShipmentItems']/ShipmentItem/@Sum)"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s106"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s106"/>
            <Cell ss:StyleID="s106"/>
            <Cell ss:StyleID="s106"/>
            <Cell ss:StyleID="s106"/>
            <Cell ss:StyleID="s106"/>
            <Cell ss:StyleID="s106"/>
            <Cell ss:StyleID="s106"/>
            <Cell ss:StyleID="s106"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m141518692"/>
            <Cell ss:StyleID="s108"/>
            <Cell ss:StyleID="s107"/>
            <Cell ss:StyleID="s106"/>
          </Row>
          <Row>
            <Cell ss:Index="10" ss:StyleID="s109"/>
            <Cell ss:StyleID="s110">
              <Data ss:Type="String">Наценка,%</Data>
            </Cell>
            <Cell ss:StyleID="s111"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:MergeAcross="2" ss:StyleID="s112">
              <Data ss:Type="String">Товарная накладная имеет приложения на </Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s115">
              <Data ss:Type="String">листах,                       на  бланках за №</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:MergeDown="2" ss:StyleID="m141518836">
              <Data ss:Type="String">Складские или транспортные расходы</Data>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="m141518856"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">и содержит</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114">
              <Data ss:Type="Number">
                <xsl:value-of select="count(set[@name='ShipmentItems']/ShipmentItem)"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">порядковых записей</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="14.25">
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">Всего наименований</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s132"/>
            <Cell ss:StyleID="s132">
              <Data ss:Type="Number">
                <xsl:value-of select="count(set[@name='ShipmentItems']/ShipmentItem)"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s132"/>
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">Масса груза (нетто)</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:MergeDown="1" ss:StyleID="m141518876">
              <Data ss:Type="Number">
                <xsl:value-of select="sum(set[@name='ShipmentItems']/ShipmentItem/@NetMass)"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s116">
              <Data ss:Type="String">кг</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6.9375">
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s139">
              <Data ss:Type="String">прописью</Data>
            </Cell>
            <Cell ss:StyleID="s139"/>
            <Cell ss:Index="10" ss:StyleID="s139"/>
            <Cell ss:MergeDown="1" ss:StyleID="m141518896">
              <Data ss:Type="String">НДС</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m141518916">
              <Data ss:Type="Number">
                <xsl:value-of select="sum(set[@name='ShipmentItems']/ShipmentItem/@NdsSum)"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">Всего мест</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114">
              <Data ss:Type="String">одно</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">Масса груза (брутто)</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:MergeDown="1" ss:StyleID="m141518936"/>
            <Cell ss:StyleID="s116">
              <Data ss:Type="String">кг</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6.9375">
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s139">
              <Data ss:Type="String">прописью</Data>
            </Cell>
            <Cell ss:StyleID="s139"/>
            <Cell ss:Index="10" ss:StyleID="s152"/>
            <Cell ss:MergeDown="1" ss:StyleID="m141518956">
              <Data ss:Type="String">Всего к оплате</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m141518976">
              <Data ss:Type="Number">
                <xsl:value-of select="sum(set[@name='ShipmentItems']/ShipmentItem/@SumWithNds)"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="2" ss:StyleID="s112">
              <Data ss:Type="String">Приложения (паспорта, сертификаты) на</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s160">
              <Data ss:Type="String">листах</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s112"/>
            <Cell ss:StyleID="s112"/>
            <Cell ss:StyleID="s112"/>
            <Cell ss:StyleID="s161"/>
            <Cell ss:StyleID="s161"/>
            <Cell ss:StyleID="s161"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s161"/>
            <Cell ss:StyleID="s162"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="2" ss:StyleID="s112">
              <Data ss:Type="String">Всего отпущено на сумму</Data>
            </Cell>
            <Cell ss:StyleID="s114">
              <Data ss:Type="String">
                <xsl:value-of select="rti:GetRepresentation1(sum(set[@name='ShipmentItems']/ShipmentItem/@SumWithNds))"/> руб. <xsl:value-of select="rti:GetCents(sum(set[@name='ShipmentItems']/ShipmentItem/@SumWithNds))"/> коп.
              </Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s164">
              <Data ss:Type="String">Отпуск разрешил</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s166">
              <Data ss:Type="String">Главный (старший)</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s168">
              <Data ss:Type="String">По доверенности №</Data>
            </Cell>
            <Cell ss:StyleID="s114">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/@AuthorityLetter"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s70"/>
            <Cell ss:StyleID="s70"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s170">
              <Data ss:Type="String">Директор</Data>
            </Cell>
            <Cell ss:StyleID="s171"/>
            <Cell ss:StyleID="s112">
              <Data ss:Type="String">Холодников Ю.В.</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s173">
              <Data ss:Type="String">бухгалтер</Data>
            </Cell>
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">_______________ Холодникова В.П.</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s175">
              <Data ss:Type="String">выданной</Data>
            </Cell>
            <Cell ss:StyleID="s114">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Driver/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s70"/>
            <Cell ss:StyleID="s70"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s177">
              <Data ss:Type="String">(директор)</Data>
            </Cell>
            <Cell ss:StyleID="s177">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s177">
              <Data ss:Type="String">(подпись)       (расшифровка подписи)</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s168">
              <Data ss:Type="String">Груз к перевозке принял</Data>
            </Cell>
            <Cell ss:StyleID="s180">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Driver/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s181"/>
            <Cell ss:StyleID="s181"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s112">
              <Data ss:Type="String">Отпуск груза произвел</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s183">
              <Data ss:Type="String">Нач. цеха</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">Холодников М.Ю.</Data>
            </Cell>
            <Cell ss:StyleID="s185">
              <Data ss:Type="String">(При личном приеме товара по количеству и ассортименту)</Data>
            </Cell>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s187">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s177">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s177">
              <Data ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s70"/>
            <Cell ss:StyleID="s70"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">М.П.</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">&quot;______&quot;  ____________________2017 г.</Data>
            </Cell>
            <Cell ss:StyleID="s185">
              <Data ss:Type="String">Груз получил грузополучатель</Data>
            </Cell>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s181"/>
            <Cell ss:StyleID="s181"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s185"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s189">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s189">
              <Data ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.31496062992125984"/>
            <Footer x:Margin="0.31496062992125984"/>
            <PageMargins x:Bottom="0.15748031496062992" x:Left="0.9055118110236221"
             x:Right="0.11811023622047245" x:Top="0.15748031496062992"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>23</ActiveRow>
              <RangeSelection>R24C1:R24C3</RangeSelection>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
      <Worksheet ss:Name="ТТН-2">
        <Table ss:ExpandedColumnCount="41" ss:ExpandedRowCount="54" x:FullColumns="1"
         x:FullRows="1">
          <Column ss:AutoFitWidth="0" ss:Width="22.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="33.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="22.5" ss:Span="2"/>
          <Column ss:Index="6" ss:AutoFitWidth="0" ss:Width="26.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="22.5" ss:Span="5"/>
          <Column ss:Index="13" ss:AutoFitWidth="0" ss:Width="24.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="22.5" ss:Span="3"/>
          <Column ss:Index="18" ss:AutoFitWidth="0" ss:Width="30"/>
          <Column ss:AutoFitWidth="0" ss:Width="27"/>
          <Column ss:AutoFitWidth="0" ss:Width="22.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="29.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="22.5" ss:Span="19"/>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="14" ss:StyleID="s68">
              <Data ss:Type="String">2.ТРАНСПОРТНЫЙ РАЗДЕЛ</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s115">
              <Data ss:Type="String">Оборотная сторона формы №1-Т</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s192">
              <Data ss:Type="String">Регистрационный №</Data>
            </Cell>
            <Cell ss:StyleID="s192"/>
            <Cell ss:StyleID="s192"/>
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s190"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s195">
              <Data ss:Type="String">Серия</Data>
            </Cell>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s190">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s195">
              <Data ss:Type="String">ТТН №</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m266358352">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date, 'ddMM\/yy')"/>-<xsl:value-of select="set[@name='Shipments']/Shipment/@SortOrder"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s190">
              <Data ss:Type="String">Срок доставки груза</Data>
            </Cell>
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">&quot;      &quot;</Data>
            </Cell>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s195">
              <Data ss:Type="String">201__   года</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="s204">
              <Data
      ss:Type="String">К путевому листу №</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="m266358412"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18.75">
            <Cell ss:StyleID="s212">
              <Data ss:Type="String">Организация</Data>
            </Cell>
            <Cell ss:StyleID="s213"/>
            <Cell ss:StyleID="s213"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="20" ss:StyleID="s63">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@FullNameWithBankRequisites"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s190">
              <Data ss:Type="String">Автомобиль</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s192"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s215">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Driver/@CarModel"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="5" ss:StyleID="s217">
              <Data ss:Type="String">Государственный номерной знак</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s220">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Driver/@Number"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="2" ss:MergeDown="2" ss:StyleID="m141520220"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25">
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s225">
              <Data ss:Type="String">Марка</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="20.25">
            <Cell ss:StyleID="s226">
              <Data ss:Type="String">Заказчик</Data>
            </Cell>
            <Cell ss:StyleID="s177"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s228">
              <Data ss:Type="String">(Плательщик)</Data>
            </Cell>
            <Cell ss:MergeAcross="19" ss:StyleID="s229">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@FullNameWithBankRequisites"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s190">
              <Data ss:Type="String">Водитель</Data>
            </Cell>
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s215">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Driver/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s190"/>
            <Cell ss:MergeAcross="5" ss:StyleID="s217">
              <Data ss:Type="String">Удостоверение №</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s220">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Driver/@Document"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s115">
              <Data ss:Type="String">Код</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:MergeDown="3" ss:StyleID="m141520464"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5">
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s233">
              <Data ss:Type="String">ФИО</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s190">
              <Data ss:Type="String">Лицензионная карточка</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s235">
              <Data ss:Type="String">стандартная, ограниченная</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="5" ss:StyleID="s217">
              <Data ss:Type="String">Вид перевозки</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s238">
              <Data ss:Type="String">автотранспорт</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6.75">
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s241">
              <Data ss:Type="String">ненужное зачеркнуть</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:StyleID="s190">
              <Data ss:Type="String">Регистрационный №</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s183"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s217">
              <Data ss:Type="String">Серия</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s183"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s190">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s183"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s115">
              <Data ss:Type="String">Маршрут</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:MergeDown="2" ss:StyleID="m141520708"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:StyleID="s190">
              <Data ss:Type="String">Пункт погрузки</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s243">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s217">
              <Data ss:Type="String">Пункт разгрузки</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="7" ss:StyleID="s246">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s115"/>
            <Cell ss:StyleID="s115"/>
            <Cell ss:StyleID="s115"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5">
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s207">
              <Data ss:Type="String">адрес,тел.</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="7" ss:StyleID="s207">
              <Data ss:Type="String">адрес, тел.</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s115"/>
            <Cell ss:StyleID="s115"/>
            <Cell ss:StyleID="s115"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9">
            <Cell ss:StyleID="s190">
              <Data ss:Type="String">Переадресовка</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s183"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s236">
              <Data ss:Type="String">1.Прицеп</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s246"/>
            <Cell ss:MergeAcross="5" ss:StyleID="s217">
              <Data ss:Type="String">Государственный номерной знак</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s183"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s65">
              <Data ss:Type="String">Гаражный номер</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="m291209460"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9">
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s152">
              <Data ss:Type="String">наименование нового грузополучателя</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s152">
              <Data ss:Type="String">марка</Data>
            </Cell>
            <Cell ss:StyleID="s139"/>
            <Cell ss:StyleID="s139"/>
            <Cell ss:StyleID="s139"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s183"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s199">
              <Data ss:Type="String">2.Прицеп</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s246"/>
            <Cell ss:MergeAcross="5" ss:StyleID="s217">
              <Data ss:Type="String">Государственный номерной знак</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s183"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s65">
              <Data ss:Type="String">Гаражный номер</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="m291209664"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s187">
              <Data ss:Type="String">подпись ответственного лица</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s152">
              <Data ss:Type="String">марка</Data>
            </Cell>
            <Cell ss:StyleID="s139"/>
            <Cell ss:StyleID="s139"/>
            <Cell ss:StyleID="s139"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="29" ss:StyleID="s90">
              <Data ss:Type="String">СВЕДЕНИЯ О ГРУЗЕ</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="4" ss:StyleID="m291209744">
              <Data ss:Type="String">Краткое описание груза</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="m291209764">
              <Data ss:Type="String">С грузом следуют документы</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291209784">
              <Data ss:Type="String">Вид упаковки</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291209804">
              <Data ss:Type="String">Количество мест</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="m291209824">
              <Data ss:Type="String">Способ определения массы </Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291209844">
              <Data ss:Type="String">Код груза</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291209888">
              <Data ss:Type="String">Номер контейнера</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291209908">
              <Data ss:Type="String">Класс груза</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291209928">
              <Data ss:Type="String">Масса брутто, кг</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9">
            <Cell ss:MergeAcross="4" ss:StyleID="m291209948">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="m291209968">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291209988">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291210008">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="m291210028">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291210048">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291210068">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291210112">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291210132">
              <Data ss:Type="Number">9</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:MergeAcross="4" ss:StyleID="m291210152">
              <Data ss:Type="String">1, См. ТН №<xsl:value-of select="set[@name='Shipments']/Shipment/@SortOrder"/> от <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date)"/></Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="m291210172">
              <Data ss:Type="String">Товарная накладная</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s272">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='ShipmentItems']/ShipmentItem/@PackType"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291210212">
              <Data ss:Type="Number">
                <xsl:value-of select="sum(set[@name='ShipmentItems']/ShipmentItem/@CountOfPlaces)"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s274"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s283"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291210272"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291210292"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291210336">
              <Data ss:Type="Number">
                <xsl:value-of select="sum(set[@name='ShipmentItems']/ShipmentItem/@NetMass)"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291210356"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:StyleID="s294"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291210376"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="4" ss:StyleID="s236">
              <Data ss:Type="String">Указанный груз с исправной</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:MergeDown="1" ss:StyleID="s300">
              <Data ss:Type="String">Кол. мест</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s184"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s302">
              <Data ss:Type="String">Указанный груз с исправной</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:MergeDown="1" ss:StyleID="s300">
              <Data ss:Type="String">Кол. мест</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s236">
              <Data ss:Type="String">Количество</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:Index="40" ss:StyleID="s131"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="4" ss:StyleID="s217">
              <Data ss:Type="String">пломбой, тарой и упаковкой</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s304">
              <Data ss:Type="String">оттиск</Data>
            </Cell>
            <Cell ss:Index="11" ss:MergeAcross="4" ss:StyleID="s302">
              <Data ss:Type="String">пломбой, тарой и упаковкой</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s304">
              <Data ss:Type="String">оттиск</Data>
            </Cell>
            <Cell ss:Index="20" ss:MergeAcross="2" ss:StyleID="s217">
              <Data ss:Type="String">ездо, заездов</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="8" ss:StyleID="s306">
              <Data ss:Type="String">Отметки о составленных актах</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="2" ss:StyleID="s217">
              <Data ss:Type="String">Массой брутто</Data>
            </Cell>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s116">
              <Data ss:Type="String">т</Data>
            </Cell>
            <Cell ss:StyleID="s307">
              <Data ss:Type="String">к перевозке</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s302">
              <Data ss:Type="String">Массой брутто</Data>
            </Cell>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s193"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s116">
              <Data ss:Type="String">т</Data>
            </Cell>
            <Cell ss:StyleID="s307"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="8" ss:StyleID="s309"/>
          </Row>
          <Row ss:StyleID="s81">
            <Cell ss:StyleID="s192">
              <Data ss:Type="String">Сдал</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s246">
              <Data ss:Type="String">нач. цеха</Data>
            </Cell>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s312"/>
            <Cell ss:StyleID="s313"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s315">
              <Data ss:Type="String">Холодников М.Ю,</Data>
            </Cell>
            <Cell ss:StyleID="s112"/>
            <Cell ss:StyleID="s316">
              <Data ss:Type="String">Сдал</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s246">
              <Data ss:Type="String">водитель</Data>
            </Cell>
            <Cell ss:StyleID="s248"/>
            <Cell ss:StyleID="s312"/>
            <Cell ss:StyleID="s313"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s184">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Driver/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s112"/>
            <Cell ss:StyleID="s112"/>
            <Cell ss:StyleID="s112"/>
            <Cell ss:StyleID="s112"/>
            <Cell ss:MergeAcross="8" ss:StyleID="s309"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s190"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s318">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s190"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s320">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s250">
              <Data ss:Type="String">(расшифровка)</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s322"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s318">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s307"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s320">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s116"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s250">
              <Data ss:Type="String">(расшифровка)</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="8" ss:StyleID="s324">
              <Data ss:Type="String">Транспортные услуги</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="s329">
              <Data
      ss:Type="String">Принял водитель экспедитор</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="s331">
              <Data
      ss:Type="String">Принял </Data>
            </Cell>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="8" ss:StyleID="s272"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="21.75">
            <Cell ss:Index="3" ss:MergeAcross="1" ss:StyleID="s183"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s183"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">МП</Data>
            </Cell>
            <Cell ss:Index="13" ss:MergeAcross="1" ss:StyleID="s183"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s183"/>
            <Cell ss:StyleID="s116"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131">
              <Data ss:Type="String">МП</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="8" ss:StyleID="s272"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s332"/>
            <Cell ss:StyleID="s332"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s334">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s336">
              <Data ss:Type="String">(расшифровка)</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s337"/>
            <Cell ss:StyleID="s332"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s334">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s336">
              <Data ss:Type="String">(расшифровка)</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:MergeAcross="31" ss:StyleID="s91">
              <Data ss:Type="String">ПОГРУЗОЧНО-РАЗГРУЗОЧНЫЕ ОПЕРАЦИИ</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="m291211332">
              <Data
      ss:Type="String">Операция</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="m291211352">
              <Data
      ss:Type="String">Исполнитель (автовладелец, получатель, отправитель)</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:MergeDown="1" ss:StyleID="m291211372">
              <Data
      ss:Type="String">Дополнительные операции (наименование, количество)</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:MergeDown="1" ss:StyleID="m291211392">
              <Data
      ss:Type="String">Механизм,грузоподъемность,емкость ковша</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:MergeDown="1" ss:StyleID="m291211412">
              <Data
      ss:Type="String">Способ (ручной,механизированный,наливом,самосвалом.</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="m291211456">
              <Data
      ss:Type="String">Код</Data>
            </Cell>
            <Cell ss:MergeAcross="5" ss:StyleID="m291211476">
              <Data ss:Type="String">Дата (число, месяц), время(час.мин)</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="m291211496">
              <Data
      ss:Type="String">Время дополнительных операций,мин</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="m291211516">
              <Data
      ss:Type="String">Подпись ответственного лица</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="22.5">
            <Cell ss:Index="21" ss:MergeAcross="2" ss:StyleID="m291211536">
              <Data
      ss:Type="String">Прибытия</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291211556">
              <Data ss:Type="String">Убытия</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25">
            <Cell ss:MergeAcross="1" ss:StyleID="m291211680">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291211700">
              <Data ss:Type="Number">11</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="m291211720">
              <Data ss:Type="Number">12</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="m291211740">
              <Data ss:Type="Number">13</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="m291211760">
              <Data ss:Type="Number">14</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291211780">
              <Data ss:Type="Number">15</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291211904">
              <Data ss:Type="Number">16</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291211924">
              <Data ss:Type="Number">17</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291211944">
              <Data ss:Type="Number">18</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291211964">
              <Data ss:Type="Number">19</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:MergeAcross="1" ss:StyleID="m291211984">
              <Data ss:Type="String">Погрузка</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291212004">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Name"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="m291212024"/>
            <Cell ss:MergeAcross="3" ss:StyleID="m291212044"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s272"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212084"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291212128"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291212148"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291212168"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291212188"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="10.5">
            <Cell ss:MergeAcross="1" ss:StyleID="m291212208">
              <Data ss:Type="String">Разгрузка</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m291212228"/>
            <Cell ss:MergeAcross="3" ss:StyleID="m291212248"/>
            <Cell ss:MergeAcross="3" ss:StyleID="m291212268"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s395"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212308"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291212352"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291212372"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291212392"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m291212412"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:MergeAcross="22" ss:StyleID="s91">
              <ss:Data ss:Type="String"
      xmlns="http://www.w3.org/TR/REC-html40">
                <B>ПРОЧИЕ СВЕДЕНИЯ</B>
                <Font
       html:Size="9">  (заполняется организацией, владельцем автотранспорта)</Font>
              </ss:Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="4" ss:StyleID="m291212452">
              <Data ss:Type="String">Расст. перевозки по гр. дорог,км</Data>
            </Cell>
            <Cell ss:StyleID="s410">
              <Data ss:Type="String">Код экс.груза</Data>
            </Cell>
            <Cell ss:StyleID="s410"/>
            <Cell ss:MergeAcross="3" ss:StyleID="m291212472">
              <Data ss:Type="String">За транспортные услуги</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="m291212492">
              <Data
      ss:Type="String">Сумма штрафа за неправильное оформлен.док</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="m291212512">
              <Data ss:Type="String">Поправочный коэффициент</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="m291212532">
              <Data ss:Type="String">Время простоя,ч.мин</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s429">
              <Data ss:Type="String">Таксировка</Data>
            </Cell>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s431">
              <Data ss:Type="String">Всего</Data>
            </Cell>
            <Cell ss:StyleID="s432">
              <Data ss:Type="String">в гор.</Data>
            </Cell>
            <Cell ss:StyleID="s432">
              <Data ss:Type="String">1гр.</Data>
            </Cell>
            <Cell ss:StyleID="s432">
              <Data ss:Type="String">IIгр.</Data>
            </Cell>
            <Cell ss:StyleID="s432">
              <Data ss:Type="String">III гр.</Data>
            </Cell>
            <Cell ss:StyleID="s433"/>
            <Cell ss:StyleID="s432"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212596">
              <Data ss:Type="String">С клиента</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212616">
              <Data ss:Type="String">Причит. Водителю</Data>
            </Cell>
            <Cell ss:Index="14" ss:MergeAcross="1" ss:StyleID="m291212636">
              <Data
      ss:Type="String">расценка вод.</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212656">
              <Data ss:Type="String">осн.тариф</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212676">
              <Data ss:Type="String">под погрузкой</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212696">
              <Data ss:Type="String">под разгрузкой</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:StyleID="s449">
              <Data ss:Type="Number">20</Data>
            </Cell>
            <Cell ss:StyleID="s450">
              <Data ss:Type="Number">21</Data>
            </Cell>
            <Cell ss:StyleID="s450">
              <Data ss:Type="Number">22</Data>
            </Cell>
            <Cell ss:StyleID="s450">
              <Data ss:Type="Number">23</Data>
            </Cell>
            <Cell ss:StyleID="s450">
              <Data ss:Type="Number">24</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212800">
              <Data ss:Type="Number">25</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212820">
              <Data ss:Type="Number">26</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212840">
              <Data ss:Type="Number">27</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212860">
              <Data ss:Type="Number">28</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212880">
              <Data ss:Type="Number">29</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291212900">
              <Data ss:Type="Number">30</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213024">
              <Data ss:Type="Number">31</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213044">
              <Data ss:Type="Number">32</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:StyleID="s455"/>
            <Cell ss:StyleID="s456"/>
            <Cell ss:StyleID="s456"/>
            <Cell ss:StyleID="s456"/>
            <Cell ss:StyleID="s456"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213064"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213084"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213104"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213124"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213144"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213164"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213184"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213204"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="4.5">
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18">
            <Cell ss:MergeAcross="1" ss:MergeDown="2" ss:StyleID="m291213312">
              <Data
      ss:Type="String">Расчет стоимости</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m291213332">
              <Data ss:Type="String">За тонны</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m291213352">
              <Data ss:Type="String">За тонно км</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="m291213372">
              <Data
      ss:Type="String">Погрузочно разгрузочные работы,тн</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="m291213392">
              <Data
      ss:Type="String">Недогрузка автомобиля и прицепа</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="m291213412">
              <Data
      ss:Type="String">Экспедирова-ние</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="m291213536">
              <Data ss:Type="String">Сверхнормативный прос-той, ч.мин</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m291213556">
              <Data ss:Type="String">За сроч-ность</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="m291213576">
              <Data
      ss:Type="String">За специальный транспорт</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m291213596">
              <Data ss:Type="String">Прочие доплаты</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:MergeDown="1" ss:StyleID="m291213616">
              <Data
      ss:Type="String">Всего</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="16.5">
            <Cell ss:Index="11" ss:MergeAcross="1" ss:StyleID="m291213636">
              <Data
      ss:Type="String">погрузке</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213656">
              <Data ss:Type="String">разгрузке</Data>
            </Cell>
            <Cell ss:Index="21" ss:StyleID="s131"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
            <Cell ss:StyleID="s114"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:Index="3" ss:StyleID="s450">
              <Data ss:Type="Number">33</Data>
            </Cell>
            <Cell ss:StyleID="s450">
              <Data ss:Type="Number">34</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213432">
              <Data ss:Type="Number">35</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213452">
              <Data ss:Type="Number">36</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213472">
              <Data ss:Type="Number">37</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213760">
              <Data ss:Type="Number">38</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213780">
              <Data ss:Type="Number">39</Data>
            </Cell>
            <Cell ss:StyleID="s450">
              <Data ss:Type="Number">40</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213800">
              <Data ss:Type="Number">41</Data>
            </Cell>
            <Cell ss:StyleID="s450">
              <Data ss:Type="Number">42</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213820">
              <Data ss:Type="Number">43</Data>
            </Cell>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s377">
              <Data ss:Type="String">Выполнено</Data>
            </Cell>
            <Cell ss:StyleID="s486"/>
            <Cell ss:StyleID="s487"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213860"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213880"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213900"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213920"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213940"/>
            <Cell ss:StyleID="s487"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291213984"/>
            <Cell ss:StyleID="s487"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214004"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s377">
              <Data ss:Type="String">Расценка, руб.к</Data>
            </Cell>
            <Cell ss:StyleID="s431"/>
            <Cell ss:StyleID="s432"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214044"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214064"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214084"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214104"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214124"/>
            <Cell ss:StyleID="s432"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214144"/>
            <Cell ss:StyleID="s432"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214164"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s312">
              <Data ss:Type="String">Таксировщик</Data>
            </Cell>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
            <Cell ss:StyleID="s180"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:MergeAcross="1" ss:StyleID="s391">
              <Data ss:Type="String">К оплате, руб.к</Data>
            </Cell>
            <Cell ss:StyleID="s492"/>
            <Cell ss:StyleID="s493"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214248"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214268"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214288"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214308"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214328"/>
            <Cell ss:StyleID="s493"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214348"/>
            <Cell ss:StyleID="s493"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m291214368"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:StyleID="s131"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s304">
              <Data ss:Type="String">подпись</Data>
            </Cell>
            <Cell ss:StyleID="s229"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s304">
              <Data ss:Type="String">расшифровка подписи</Data>
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.31496062992125984"/>
            <Footer x:Margin="0.31496062992125984" x:Data="Страница  &amp;P из &amp;N"/>
            <PageMargins x:Bottom="0.15748031496062992" x:Left="0.70866141732283472"
             x:Right="0.11811023622047245" x:Top="0.35433070866141736"/>
          </PageSetup>
          <FitToPage/>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <Scale>93</Scale>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <TopRowVisible>7</TopRowVisible>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>24</ActiveRow>
              <ActiveCol>5</ActiveCol>
              <RangeSelection>R25C6:R25C8</RangeSelection>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

</xsl:stylesheet>
