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
          <Font ss:FontName="Arial" x:Family="Swiss"/>
          <Interior/>
          <NumberFormat/>
          <Protection/>
        </Style>
        <Style ss:ID="m209444188">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209444208">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m209444228">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209444248">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8" ss:Bold="1"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m209443720">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209443740">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209443760">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m209443780">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209443820">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209443860">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209443272">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209443292">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m209443312">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209443332">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m209443352">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209443372">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m209442784">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209442804">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m209442824">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m209442864">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m209442884">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215541728">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="m215541828">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215541848">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8" ss:Bold="1"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m215541888">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215541908">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215542704">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215542724">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215542744">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215542764">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215542784">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m215542804">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215543296">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215543316">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215543336">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215543356">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215543376">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215543396">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="m215543416">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215543436">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="0%"/>
        </Style>
        <Style ss:ID="m215543456">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m215543476">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m216568480">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m216568500">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m216568520">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m216568540">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m216568560">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="m216568580">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s62">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s63">
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s64">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s65">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s66">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s67">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s68">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s69">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s70">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s71">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s72">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s73">
          <Borders/>
        </Style>
        <Style ss:ID="s74">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s75">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s76">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="6"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s77">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s78">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s79">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s80">
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s81">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s82">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s83">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s84">
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s85">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s86">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s87">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s88">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s89">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s90">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s91">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s92">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s93">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s94">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s95">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s96">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s97">
          <Alignment ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s98">
          <Alignment ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s99">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s100">
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s101">
          <Alignment ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s102">
          <Alignment ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s103">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s104">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
        </Style>
        <Style ss:ID="s105">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s130">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="s142">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s144">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s150">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Sheet1">
        <Table ss:ExpandedColumnCount="41" ss:ExpandedRowCount="54" x:FullColumns="1"
         x:FullRows="1" ss:DefaultColumnWidth="60.75">
          <Column ss:AutoFitWidth="0" ss:Width="24.75"/>
          <Column ss:Width="53.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="14.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="46.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="24"/>
          <Column ss:AutoFitWidth="0" ss:Width="14.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="40.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="19.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="46.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="11.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="40.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="45"/>
          <Column ss:AutoFitWidth="0" ss:Width="12" ss:Span="1"/>
          <Column ss:Index="15" ss:AutoFitWidth="0" ss:Width="48.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="14.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="27"/>
          <Column ss:AutoFitWidth="0" ss:Width="14.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="21"/>
          <Column ss:AutoFitWidth="0" ss:Width="14.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="45.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="14.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="57"/>
          <Column ss:AutoFitWidth="0" ss:Width="31.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="36.75" ss:Span="1"/>
          <Column ss:Index="27" ss:AutoFitWidth="0" ss:Width="35.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="43.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="39"/>
          <Column ss:AutoFitWidth="0" ss:Width="37.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="54" ss:Span="5"/>
          <Column ss:Index="38" ss:AutoFitWidth="0" ss:Width="8.25"/>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Приложение №1 к письму ФНС России от 21.10.2013</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:Index="32" ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Приложение №1</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Универсальный</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Счет-фактура №<xsl:value-of select="set[@name='Shipments']/Shipment/Payment/@InvoiceFacture"/> от <xsl:value-of select="rti:FormatDateTime(set[@name='Shipments']/Shipment/@Date, 'dd.MM.yyyy')"/>г. (1)</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">к постановлению Правительства Российской Федерации</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">передаточный</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Исправление  № _____________ от _____________ (1а)</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">от 26 декабря 2011 г. №1137</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">документ</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:Index="32" ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s83">
              <Data ss:Type="String">Продавец</Data>
            </Cell>
            <Cell ss:StyleID="s84"/>
            <Cell ss:StyleID="s84"/>
            <Cell ss:StyleID="s84"/>
            <Cell ss:StyleID="s84"/>
            <Cell ss:StyleID="s84"/>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">(2)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Адрес</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Address"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">(2а)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Статус:</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">ИНН/КПП продавца</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String"><xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Inn"/> / <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Kpp"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">(2б)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Грузоотправитель и его адрес</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String"><xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@FullName"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">(3)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">1 – счет-фактура и</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Грузополучатель и его адрес</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String"><xsl:value-of select="set[@name='Shipments']/Shipment/Recipient/@FullName"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">(4)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String"> передаточный</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">К платежно-расчетному документу</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80">
              <Data ss:Type="String">№<xsl:value-of select="set[@name='Shipments']/Shipment/Payment/@PaymentDocNumber"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80">
              <Data ss:Type="String">от <xsl:value-of select="rti:FormatDateTime(set[@name='Shipments']/Shipment/Payment/@PaymentDate, 'dd.MM.yyyy')"/>г.</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">(5)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String"> документ (акт)</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s83">
              <Data ss:Type="String">Покупатель</Data>
            </Cell>
            <Cell ss:StyleID="s84"/>
            <Cell ss:StyleID="s84"/>
            <Cell ss:StyleID="s84"/>
            <Cell ss:StyleID="s84"/>
            <Cell ss:StyleID="s84"/>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">(6)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Адрес</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Address"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">(6а)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">2 – передаточный</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">ИНН/КПП покупателя</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/><Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Inn"/> / <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Kpp"/>
            </Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">(6б)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String"> документ (акт)</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Валюта, наименование, код</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">Российский рубль, 643</Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">(7)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
            <Cell ss:StyleID="s85"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s86"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="67.5">
            <Cell ss:StyleID="s87">
              <Data ss:Type="String">№&#10;П/п</Data>
            </Cell>
            <Cell ss:StyleID="s88">
              <Data ss:Type="String">Код товара/&#10;Работ, услуг</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s150">
              <Data ss:Type="String">Наименование товара (описание&#10;выполенных работ, оказанных&#10;услуг, имущественного права)</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s88">
              <Data ss:Type="String">Единица&#10;измерения</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m209442824">
              <Data ss:Type="String">Количество&#10;(объем)</Data>
            </Cell>
            <Cell ss:StyleID="s88">
              <Data ss:Type="String">Цена (тариф)&#10;за единицу&#10;измерения</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m209443860">
              <Data ss:Type="String">Стоимость&#10;товаров&#10;(работ, услуг),&#10;имущественных&#10;прав без налога&#10; – всего</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m209443820">
              <Data ss:Type="String">В том числе&#10;сумма&#10;акциза</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m209443720">
              <Data ss:Type="String">Налого-вая&#10;ставка</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m215542744">
              <Data ss:Type="String">Сумма налога,&#10;предъявля-емая&#10;покупателю</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m215542704">
              <Data ss:Type="String">Стоимость&#10;товаров&#10;(работ, услуг),&#10;имущественных&#10;прав с налогом&#10; – всего</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m215541828">
              <Data ss:Type="String">Страна&#10;происхождения&#10;товара</Data>
            </Cell>
            <Cell ss:StyleID="s87">
              <Data ss:Type="String">Номер&#10;таможенной&#10;декларации</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="58.5">
            <Cell ss:StyleID="s87"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:MergeAcross="4" ss:StyleID="m209443272"/>
            <Cell ss:StyleID="s87">
              <Data ss:Type="String">Код</Data>
            </Cell>
            <Cell ss:StyleID="s88">
              <Data ss:Type="String">условное обоз-начение (нацио-нальное)</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s88"/>
            <Cell ss:StyleID="s102"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m209442784"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m209444188"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m209443740"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m215542764"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m215542724"/>
            <Cell ss:StyleID="s87">
              <Data ss:Type="String">Цифро-&#10;вой&#10;код</Data>
            </Cell>
            <Cell ss:StyleID="s87">
              <Data ss:Type="String">Краткое&#10;наиме-нование</Data>
            </Cell>
            <Cell ss:StyleID="s87"/>
            <Cell ss:Index="32" ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s89">
              <Data ss:Type="String">А</Data>
            </Cell>
            <Cell ss:StyleID="s89">
              <Data ss:Type="String">Б</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="m209443292">
              <Data ss:Type="String">1</Data>
            </Cell>
            <Cell ss:StyleID="s89">
              <Data ss:Type="String">2</Data>
            </Cell>
            <Cell ss:StyleID="s89">
              <Data ss:Type="String">2а</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m209442864">
              <Data ss:Type="String">3</Data>
            </Cell>
            <Cell ss:StyleID="s101">
              <Data ss:Type="String">4</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m209442804">
              <Data ss:Type="String">5</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m209444208">
              <Data ss:Type="String">6</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m209443760">
              <Data ss:Type="String">7</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m215542784">
              <Data ss:Type="String">8</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m209443332">
              <Data ss:Type="String">9</Data>
            </Cell>
            <Cell ss:StyleID="s89">
              <Data ss:Type="String">10</Data>
            </Cell>
            <Cell ss:StyleID="s89">
              <Data ss:Type="String">10а</Data>
            </Cell>
            <Cell ss:StyleID="s89">
              <Data ss:Type="String">11</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s94"/>
            <Cell ss:StyleID="s94"/>
            <Cell ss:StyleID="s94"/>
            <Cell ss:StyleID="s94"/>
            <Cell ss:StyleID="s94"/>
          </Row>


          <xsl:apply-templates select="set[@name='ShipmentItems']/ShipmentItem" />


          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s91">
              <Data ss:Type="String">Всего к оплате</Data>
            </Cell>
            <Cell ss:StyleID="s95"/>
            <Cell ss:StyleID="s95"/>
            <Cell ss:StyleID="s95"/>
            <Cell ss:StyleID="s95"/>
            <Cell ss:StyleID="s81"/>
            <Cell ss:StyleID="s81"/>
            <Cell ss:StyleID="s81"/>
            <Cell ss:StyleID="s81"/>
            <Cell ss:StyleID="s81"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m215541728" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="m209444248">
              <Data ss:Type="String">X</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m215541848" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="String">0,18</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m209443372">
              <Data ss:Type="String">1,18</Data>
            </Cell>
            <Cell ss:StyleID="s92"/>
            <Cell ss:StyleID="s92"/>
            <Cell ss:StyleID="s92"/>
            <Cell ss:Index="32" ss:StyleID="s100"/>
            <Cell ss:StyleID="s100"/>
            <Cell ss:StyleID="s100"/>
            <Cell ss:StyleID="s100"/>
            <Cell ss:StyleID="s100"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Документ</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Руководитель организации</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Главный бухгалтер</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:Index="30" ss:StyleID="s80"/>
            <Cell ss:Index="32" ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:Index="39" ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">составлен на</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">или иное уполномоченное лицо</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:Index="15" ss:StyleID="s63">
              <Data ss:Type="String">или иное уполномоченное лицо</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:Index="21" ss:StyleID="s65"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:Index="30" ss:StyleID="s63"/>
            <Cell ss:Index="32" ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">листах</Data>
            </Cell>
            <Cell ss:StyleID="s66"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s72">
              <Data ss:Type="String">подпись</Data>
            </Cell>
            <Cell ss:StyleID="s97"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s72">
              <Data ss:Type="String">ФИО</Data>
            </Cell>
            <Cell ss:Index="15" ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:Index="21" ss:StyleID="s78">
              <Data ss:Type="String">подпись</Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s72">
              <Data ss:Type="String">ФИО</Data>
            </Cell>
            <Cell ss:Index="30" ss:StyleID="s63"/>
            <Cell ss:Index="32" ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:Index="32" ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Индивидуальный предприниматель</Data>
            </Cell>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:Index="14" ss:StyleID="s80"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:Index="32" ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
          </Row>
          <Row ss:Height="13.5">
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s93"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s79">
              <Data ss:Type="String">подпись</Data>
            </Cell>
            <Cell ss:StyleID="s103"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s144">
              <Data ss:Type="String">ФИО</Data>
            </Cell>
            <Cell ss:StyleID="s67"/>
            <Cell ss:MergeAcross="11" ss:StyleID="s79">
              <Data ss:Type="String">реквизиты свидетельства о регистрации индивидуального предпринимателя</Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:Index="32" ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Основание передачи (сдачи) / получения (приемки)</Data>
            </Cell>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:StyleID="s80"/>
            <Cell ss:Index="26" ss:StyleID="s94">
              <Data ss:Type="String">[8]</Data>
            </Cell>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:Index="32" ss:StyleID="s94"/>
            <Cell ss:StyleID="s94"/>
            <Cell ss:StyleID="s94"/>
            <Cell ss:StyleID="s94"/>
            <Cell ss:StyleID="s94"/>
            <Cell ss:StyleID="s73"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s96">
              <Data ss:Type="String">(договор, доверенность и др.)</Data>
            </Cell>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s96"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:Index="37" ss:StyleID="s74"/>
            <Cell ss:Index="41" ss:StyleID="s75"/>
          </Row>
          <Row>
            <Cell ss:Index="41" ss:StyleID="s75"/>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String">Данные о транспортировке и грузе</Data>
            </Cell>
            <Cell ss:Index="7" ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">[9]</Data>
            </Cell>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:Index="32" ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
          </Row>
          <Row>
            <Cell ss:Index="6" ss:MergeAcross="19" ss:StyleID="s142">
              <Data ss:Type="String">(транспортная накладная, поручение экспедитору, экспедиторская / складская расписка и др. / масса нетто / брутто груза, если не приведены ссылки на транспортные документы, содержащие эти сведения)</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s76"/>
            <Cell ss:StyleID="s76"/>
            <Cell ss:StyleID="s76"/>
            <Cell ss:StyleID="s76"/>
            <Cell ss:StyleID="s76"/>
            <Cell ss:StyleID="s76"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">Товар (груз) передал / услуги, результаты работ, права сдал</Data>
            </Cell>
            <Cell ss:Index="13" ss:StyleID="s104"/>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">Товар (груз) получил / услуги, результаты работ, права принял</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:Index="7" ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">[10]</Data>
            </Cell>
            <Cell ss:StyleID="s104"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:Index="21" ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:Index="26" ss:StyleID="s75">
              <Data ss:Type="String">[15]</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s73"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s72">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s72">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s72">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s70"/>
            <Cell ss:StyleID="s104"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s72">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s72">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s72">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s70"/>
            <Cell ss:Index="32" ss:StyleID="s70"/>
            <Cell ss:StyleID="s70"/>
            <Cell ss:StyleID="s70"/>
            <Cell ss:StyleID="s70"/>
            <Cell ss:StyleID="s70"/>
            <Cell ss:StyleID="s74"/>
          </Row>
          <Row>
            <Cell ss:Index="13" ss:StyleID="s104"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Дата отгрузки, передачи (сдачи) &quot;___&quot; _____________ ____ г.</Data>
            </Cell>
            <Cell ss:Index="12" ss:StyleID="s75">
              <Data ss:Type="String">[11]</Data>
            </Cell>
            <Cell ss:StyleID="s104"/>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Дата отгрузки, получения (приемки) &quot;___&quot; _____________ ____ г.</Data>
            </Cell>
            <Cell ss:Index="26" ss:StyleID="s75">
              <Data ss:Type="String">[16]</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
          </Row>
          <Row>
            <Cell ss:Index="13" ss:StyleID="s104"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Иные сведения об отгрузке, передаче</Data>
            </Cell>
            <Cell ss:Index="13" ss:StyleID="s104"/>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Иные сведения о получении, приемке</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">[12]</Data>
            </Cell>
            <Cell ss:StyleID="s104"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:Index="26" ss:StyleID="s75">
              <Data ss:Type="String">[17]</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s73"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="10" ss:StyleID="s142">
              <Data ss:Type="String">(ссылки на неотъемлемые приложения, сопутствующие документы, иные документы и т.п.)</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s104"/>
            <Cell ss:MergeAcross="11" ss:StyleID="s142">
              <Data ss:Type="String">(информация о наличии/отсутствии претензии; ссылки на неотъемлемые приложения, и другие документы и т.п.)</Data>
            </Cell>
            <Cell ss:StyleID="s77"/>
            <Cell ss:Index="37" ss:StyleID="s77"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Ответственный за правильность оформления факта хозяйственной жизни</Data>
            </Cell>
            <Cell ss:Index="13" ss:StyleID="s104"/>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Ответственный за правильность оформления факта хозяйственной жизни</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:Index="7" ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">[13]</Data>
            </Cell>
            <Cell ss:StyleID="s104"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:Index="22" ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:Index="26" ss:StyleID="s75">
              <Data ss:Type="String">[18]</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:StyleID="s73"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s72">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s72">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s72">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s104"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s72">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s72">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s74"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s72">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s97"/>
            <Cell ss:Index="32" ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s70"/>
          </Row>
          <Row>
            <Cell ss:Index="13" ss:StyleID="s104"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Наименование экономического субъекта – составителя документа (в т.ч. комиссионера/агента)</Data>
            </Cell>
            <Cell ss:Index="13" ss:StyleID="s104"/>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Наименование экономического субъекта – составителя документа</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">[14]</Data>
            </Cell>
            <Cell ss:StyleID="s104"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:Index="26" ss:StyleID="s75">
              <Data ss:Type="String">[19]</Data>
            </Cell>
            <Cell ss:Index="31" ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="10" ss:StyleID="s142">
              <Data ss:Type="String">(может не заполняться при проставлении печати в М.П., может быть указан ИНН / КПП)</Data>
            </Cell>
            <Cell ss:StyleID="s77"/>
            <Cell ss:StyleID="s105"/>
            <Cell ss:MergeAcross="11" ss:StyleID="s142">
              <Data ss:Type="String">(может не заполняться при проставлении печати в М.П., может быть указан ИНН / КПП)</Data>
            </Cell>
            <Cell ss:StyleID="s77"/>
          </Row>
          <Row>
            <Cell ss:Index="2">
              <Data ss:Type="String">М.П.</Data>
            </Cell>
            <Cell ss:Index="13" ss:StyleID="s104"/>
            <Cell ss:Index="15">
              <Data ss:Type="String">М.П.</Data>
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.31496062992125984"/>
            <Footer x:Margin="0.31496062992125984" x:Data="Страница  &amp;P из &amp;N"/>
            <PageMargins x:Bottom="0.74803149606299213" x:Left="0.23622047244094491"
             x:Right="0.23622047244094491" x:Top="0.74803149606299213"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <PageBreakZoom>60</PageBreakZoom>
          <Selected/>
          <TopRowVisible>4</TopRowVisible>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>25</ActiveRow>
              <ActiveCol>10</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="set[@name='ShipmentItems']/ShipmentItem">
    <xsl:call-template name = "ShipmentItemRow"/>
  </xsl:template>

  <xsl:template name="ShipmentItemRow">
    <Row>
      <Cell ss:StyleID="s64">
        <Data ss:Type="Number">
          <xsl:number/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s90"/>
      <Cell ss:MergeAcross="4" ss:StyleID="m215543376">
        <Data ss:Type="String">
          <xsl:value-of select="@FullDetailName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s64">
        <Data ss:Type="Number">
          <xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Code"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s90">
        <Data ss:Type="String">
          <xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s90"/>
      <Cell ss:StyleID="s82">
        <Data ss:Type="Number">
          <xsl:value-of select="@Count"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s130">
        <Data ss:Type="Number">
          <xsl:value-of select="@RealPrice"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="2" ss:StyleID="m215543396">
        <Data ss:Type="Number">
          <xsl:value-of select="@Sum"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="1" ss:StyleID="m215543416">
        <Data ss:Type="String"> &#45;&#45;-</Data>
      </Cell>
      <Cell ss:MergeAcross="1" ss:StyleID="m215543436">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsPercent div 100"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="1" ss:StyleID="m215543456" ss:Formula="=RC[-7]*0.18">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsSum"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="1" ss:StyleID="m215543476" ss:Formula="=RC[-9]*1.18">
        <Data
ss:Type="Number">
          <xsl:value-of select="@SumWithNds"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s64">
        <Data ss:Type="String"> &#45;&#45;-</Data>
      </Cell>
      <Cell ss:StyleID="s64">
        <Data ss:Type="String"> &#45;&#45;-</Data>
      </Cell>
      <Cell ss:StyleID="s64">
        <Data ss:Type="String"> &#45;&#45;-</Data>
      </Cell>
      <Cell ss:Index="32" ss:StyleID="s80"/>
      <Cell ss:StyleID="s80"/>
      <Cell ss:StyleID="s80"/>
      <Cell ss:StyleID="s80"/>
      <Cell ss:StyleID="s80"/>
    </Row>
  </xsl:template>

</xsl:stylesheet>
