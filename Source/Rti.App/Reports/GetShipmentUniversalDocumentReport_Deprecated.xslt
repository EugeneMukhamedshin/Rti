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
        <Style ss:ID="m193592608">
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
        <Style ss:ID="m193592628">
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
        <Style ss:ID="m193592648">
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
        <Style ss:ID="m193592668">
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
        <Style ss:ID="m193592160">
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
        <Style ss:ID="m193592180">
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
        <Style ss:ID="m193592200">
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
        <Style ss:ID="m193592220">
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
        <Style ss:ID="m193592240">
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
        <Style ss:ID="m193592260">
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
        <Style ss:ID="m83420032">
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
        <Style ss:ID="m83420052">
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
        <Style ss:ID="m83420072">
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
        <Style ss:ID="m83420092">
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
        <Style ss:ID="m83420112">
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
        <Style ss:ID="m83420132">
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
        <Style ss:ID="m83419360">
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
        <Style ss:ID="m83419380">
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
        <Style ss:ID="m83419400">
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
        <Style ss:ID="m83419420">
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
        <Style ss:ID="m83419440">
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
        <Style ss:ID="m83419460">
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
        <Style ss:ID="m236361696">
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
        <Style ss:ID="m236361716">
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
        <Style ss:ID="m236361736">
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
        <Style ss:ID="m236361756">
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
        <Style ss:ID="m236361776">
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
        <Style ss:ID="m236361796">
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
        <Style ss:ID="m236361816">
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
        <Style ss:ID="m236361920">
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
        <Style ss:ID="m236361940">
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
        <Style ss:ID="m236361960">
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
        <Style ss:ID="m236361980">
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
        <Style ss:ID="m236362000">
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
        <Style ss:ID="m236362020">
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
        <Style ss:ID="m236362592">
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
        <Style ss:ID="m236362612">
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
        <Style ss:ID="m236362632">
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
        <Style ss:ID="m236362652">
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
        <Style ss:ID="m236362692">
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
        <Style ss:ID="m236362712">
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
        <Style ss:ID="m236362732">
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
        <Style ss:ID="m236362752">
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
        <Style ss:ID="m236362772">
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
        <Style ss:ID="m236363080">
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
        <Style ss:ID="m236363100">
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
        <Style ss:ID="m236363120">
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
        <Style ss:ID="m236363140">
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
        <Style ss:ID="s62">
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s63">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s64">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s65">
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s66">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s67">
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s68">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s69">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s70">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s71">
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
        <Style ss:ID="s72">
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
        <Style ss:ID="s74">
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
        <Style ss:ID="s82">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s88">
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
        <Style ss:ID="s96">
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
        <Style ss:ID="s97">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s98">
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
        <Style ss:ID="s99">
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
        <Style ss:ID="s107">
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
        <Style ss:ID="s108">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="s133">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s134">
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
        <Style ss:ID="s135">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s149">
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
        <Style ss:ID="s150">
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s151">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s152">
          <Alignment ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s155">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s156">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s157">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s158">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s159">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s160">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s162">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s163">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s166">
          <Borders/>
        </Style>
        <Style ss:ID="s167">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s168">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s170">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s172">
          <Alignment ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s173">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="6"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s174">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s175">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
        </Style>
        <Style ss:ID="s176">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s177">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s178">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s179">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:Family="Swiss" ss:Size="6"/>
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
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Приложение №1 к письму ФНС России от 21.10.2013</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:Index="32" ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">Приложение №1</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Универсальный</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">Счет-фактура № _______________ от _____________. (1)</Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">к постановлению Правительства Российской Федерации</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">передаточный</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">Исправление  № ___&#45;&#45;-__________ от _____________ (1а)</Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s63">
              <Data ss:Type="String">от 26 декабря 2011 г. №1137</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
            <Cell ss:StyleID="s63"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">документ</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:Index="32" ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Продавец</Data>
            </Cell>
            <Cell ss:StyleID="s67"/>
            <Cell ss:StyleID="s67"/>
            <Cell ss:StyleID="s67"/>
            <Cell ss:StyleID="s67"/>
            <Cell ss:StyleID="s67"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">(2)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">Адрес</Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">(2а)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Статус:</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">ИНН/КПП продавца</Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">(2б)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">Грузоотправитель и его адрес</Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">(3)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">1 – счет-фактура и</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">Грузополучатель и его адрес</Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">(4)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String"> передаточный</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">К платежно-расчетному документу</Data>
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
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">(5)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String"> документ (акт)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s66">
              <Data ss:Type="String">Покупатель</Data>
            </Cell>
            <Cell ss:StyleID="s67"/>
            <Cell ss:StyleID="s67"/>
            <Cell ss:StyleID="s67"/>
            <Cell ss:StyleID="s67"/>
            <Cell ss:StyleID="s67"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">(6)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">Адрес</Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">(6а)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">2 – передаточный</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">ИНН/КПП покупателя</Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">(6б)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String"> документ (акт)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">Валюта, наименование, код</Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s69">
              <Data ss:Type="String">(7)</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
            <Cell ss:StyleID="s69"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s70"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="67.5">
            <Cell ss:StyleID="s71">
              <Data ss:Type="String">№&#10;П/п</Data>
            </Cell>
            <Cell ss:StyleID="s72">
              <Data ss:Type="String">Код товара/&#10;Работ, услуг</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s74">
              <Data ss:Type="String">Наименование товара (описание&#10;выполенных работ, оказанных&#10;услуг, имущественного права)</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s72">
              <Data ss:Type="String">Единица&#10;измерения</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m236363080">
              <Data ss:Type="String">Количество&#10;(объем)</Data>
            </Cell>
            <Cell ss:StyleID="s72">
              <Data ss:Type="String">Цена (тариф)&#10;за единицу&#10;измерения</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m236363100">
              <Data ss:Type="String">Стоимость&#10;товаров&#10;(работ, услуг),&#10;имущественных&#10;прав без налога&#10; – всего</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m236363120">
              <Data ss:Type="String">В том числе&#10;сумма&#10;акциза</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m236363140">
              <Data ss:Type="String">Налого-вая&#10;ставка</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m236362592">
              <Data ss:Type="String">Сумма налога,&#10;предъявля-емая&#10;покупателю</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m236362612">
              <Data ss:Type="String">Стоимость&#10;товаров&#10;(работ, услуг),&#10;имущественных&#10;прав с налогом&#10; – всего</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m236362632">
              <Data ss:Type="String">Страна&#10;происхождения&#10;товара</Data>
            </Cell>
            <Cell ss:StyleID="s71">
              <Data ss:Type="String">Номер&#10;таможенной&#10;декларации</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s82"/>
            <Cell ss:StyleID="s82"/>
            <Cell ss:StyleID="s82"/>
            <Cell ss:StyleID="s82"/>
            <Cell ss:StyleID="s82"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="58.5">
            <Cell ss:StyleID="s71"/>
            <Cell ss:StyleID="s72"/>
            <Cell ss:MergeAcross="4" ss:StyleID="m236362652"/>
            <Cell ss:StyleID="s71">
              <Data ss:Type="String">Код</Data>
            </Cell>
            <Cell ss:StyleID="s72">
              <Data ss:Type="String">условное обоз-начение (нацио-нальное)</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s72"/>
            <Cell ss:StyleID="s88"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m236362692"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m236362712"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m236362732"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m236362752"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m236362772"/>
            <Cell ss:StyleID="s71">
              <Data ss:Type="String">Цифро-&#10;вой&#10;код</Data>
            </Cell>
            <Cell ss:StyleID="s71">
              <Data ss:Type="String">Краткое&#10;наиме-нование</Data>
            </Cell>
            <Cell ss:StyleID="s71"/>
            <Cell ss:Index="32" ss:StyleID="s82"/>
            <Cell ss:StyleID="s82"/>
            <Cell ss:StyleID="s82"/>
            <Cell ss:StyleID="s82"/>
            <Cell ss:StyleID="s82"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s89">
              <Data ss:Type="String">А</Data>
            </Cell>
            <Cell ss:StyleID="s89">
              <Data ss:Type="String">Б</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="m236361920">
              <Data ss:Type="String">1</Data>
            </Cell>
            <Cell ss:StyleID="s89">
              <Data ss:Type="String">2</Data>
            </Cell>
            <Cell ss:StyleID="s89">
              <Data ss:Type="String">2а</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m236361940">
              <Data ss:Type="String">3</Data>
            </Cell>
            <Cell ss:StyleID="s96">
              <Data ss:Type="String">4</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m236361960">
              <Data ss:Type="String">5</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m236361980">
              <Data ss:Type="String">6</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m236362000">
              <Data ss:Type="String">7</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m236362020">
              <Data ss:Type="String">8</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m236361696">
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
            <Cell ss:Index="32" ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:MergeAcross="4" ss:StyleID="m236361716"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s107"/>
            <Cell ss:StyleID="s108"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m236361736"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m236361756"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m236361776"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m236361796"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m236361816"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:Index="32" ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:MergeAcross="4" ss:StyleID="m83419360"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s107"/>
            <Cell ss:StyleID="s133"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m83419380"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m83419400"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m83419420"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m83419440"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m83419460"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:Index="32" ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:MergeAcross="4" ss:StyleID="m83420032"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s107"/>
            <Cell ss:StyleID="s133"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m83420052"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m83420072"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m83420092"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m83420112"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m83420132"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:Index="32" ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:MergeAcross="4" ss:StyleID="m193592160"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s99"/>
            <Cell ss:StyleID="s107"/>
            <Cell ss:StyleID="s133"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m193592180"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m193592200"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m193592220"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m193592240"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m193592260"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:Index="32" ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s134">
              <Data ss:Type="String">Всего к оплате</Data>
            </Cell>
            <Cell ss:StyleID="s135"/>
            <Cell ss:StyleID="s135"/>
            <Cell ss:StyleID="s135"/>
            <Cell ss:StyleID="s135"/>
            <Cell ss:StyleID="s133"/>
            <Cell ss:StyleID="s133"/>
            <Cell ss:StyleID="s133"/>
            <Cell ss:StyleID="s133"/>
            <Cell ss:StyleID="s133"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m193592608"/>
            <Cell ss:MergeAcross="3" ss:StyleID="m193592628"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m193592648"/>
            <Cell ss:MergeAcross="1" ss:StyleID="m193592668"/>
            <Cell ss:StyleID="s149"/>
            <Cell ss:StyleID="s149"/>
            <Cell ss:StyleID="s149"/>
            <Cell ss:Index="32" ss:StyleID="s150"/>
            <Cell ss:StyleID="s150"/>
            <Cell ss:StyleID="s150"/>
            <Cell ss:StyleID="s150"/>
            <Cell ss:StyleID="s150"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Документ</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">Руководитель организации</Data>
            </Cell>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Главный бухгалтер</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:Index="30" ss:StyleID="s65"/>
            <Cell ss:Index="32" ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:Index="39" ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">составлен на</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">или иное уполномоченное лицо</Data>
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
            <Cell ss:Index="15" ss:StyleID="s62">
              <Data ss:Type="String">или иное уполномоченное лицо</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:Index="21" ss:StyleID="s68"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:Index="30" ss:StyleID="s62"/>
            <Cell ss:Index="32" ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">листах</Data>
            </Cell>
            <Cell ss:StyleID="s64"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s151">
              <Data ss:Type="String">подпись</Data>
            </Cell>
            <Cell ss:StyleID="s152"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s151">
              <Data ss:Type="String">ФИО</Data>
            </Cell>
            <Cell ss:Index="15" ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:Index="21" ss:StyleID="s155">
              <Data ss:Type="String">подпись</Data>
            </Cell>
            <Cell ss:StyleID="s156"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s151">
              <Data ss:Type="String">ФИО</Data>
            </Cell>
            <Cell ss:Index="30" ss:StyleID="s62"/>
            <Cell ss:Index="32" ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:Index="32" ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s64">
              <Data ss:Type="String">Индивидуальный предприниматель</Data>
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
            <Cell ss:Index="14" ss:StyleID="s65"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s68"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:Index="32" ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s157"/>
            <Cell ss:StyleID="s158"/>
            <Cell ss:StyleID="s158"/>
            <Cell ss:StyleID="s158"/>
            <Cell ss:StyleID="s158"/>
            <Cell ss:StyleID="s158"/>
            <Cell ss:StyleID="s159">
              <Data ss:Type="String">подпись</Data>
            </Cell>
            <Cell ss:StyleID="s160"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s162">
              <Data ss:Type="String">ФИО</Data>
            </Cell>
            <Cell ss:StyleID="s163"/>
            <Cell ss:MergeAcross="11" ss:StyleID="s159">
              <Data ss:Type="String">реквизиты свидетельства о регистрации индивидуального предпринимателя</Data>
            </Cell>
            <Cell ss:StyleID="s156"/>
            <Cell ss:Index="32" ss:StyleID="s156"/>
            <Cell ss:StyleID="s156"/>
            <Cell ss:StyleID="s156"/>
            <Cell ss:StyleID="s156"/>
            <Cell ss:StyleID="s156"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Основание передачи (сдачи) / получения (приемки)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
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
            <Cell ss:StyleID="s65"/>
            <Cell ss:Index="26" ss:StyleID="s97">
              <Data ss:Type="String">[8]</Data>
            </Cell>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:Index="32" ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s166"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s167">
              <Data ss:Type="String">(договор, доверенность и др.)</Data>
            </Cell>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s167"/>
            <Cell ss:StyleID="s152"/>
            <Cell ss:StyleID="s152"/>
            <Cell ss:StyleID="s152"/>
            <Cell ss:StyleID="s152"/>
            <Cell ss:StyleID="s152"/>
            <Cell ss:Index="37" ss:StyleID="s156"/>
            <Cell ss:Index="41" ss:StyleID="s168"/>
          </Row>
          <Row>
            <Cell ss:Index="41" ss:StyleID="s168"/>
          </Row>
          <Row>
            <Cell>
              <Data ss:Type="String">Данные о транспортировке и грузе</Data>
            </Cell>
            <Cell ss:Index="7" ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s168">
              <Data ss:Type="String">[9]</Data>
            </Cell>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:Index="32" ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
          </Row>
          <Row>
            <Cell ss:Index="6" ss:MergeAcross="19" ss:StyleID="s170">
              <Data ss:Type="String">(транспортная накладная, поручение экспедитору, экспедиторская / складская расписка и др. / масса нетто / брутто груза, если не приведены ссылки на транспортные документы, содержащие эти сведения)</Data>
            </Cell>
            <Cell ss:StyleID="s172"/>
            <Cell ss:StyleID="s172"/>
            <Cell ss:StyleID="s172"/>
            <Cell ss:StyleID="s172"/>
            <Cell ss:StyleID="s172"/>
            <Cell ss:StyleID="s173"/>
            <Cell ss:StyleID="s173"/>
            <Cell ss:StyleID="s173"/>
            <Cell ss:StyleID="s173"/>
            <Cell ss:StyleID="s173"/>
            <Cell ss:StyleID="s173"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s174">
              <Data ss:Type="String">Товар (груз) передал / услуги, результаты работ, права сдал</Data>
            </Cell>
            <Cell ss:Index="13" ss:StyleID="s175"/>
            <Cell ss:StyleID="s174">
              <Data ss:Type="String">Товар (груз) получил / услуги, результаты работ, права принял</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:Index="7" ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s168">
              <Data ss:Type="String">[10]</Data>
            </Cell>
            <Cell ss:StyleID="s175"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:Index="21" ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:Index="26" ss:StyleID="s168">
              <Data ss:Type="String">[15]</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s166"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s151">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s156"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s151">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s156"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s151">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s177"/>
            <Cell ss:StyleID="s175"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s151">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s156"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s151">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s156"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s151">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s177"/>
            <Cell ss:Index="32" ss:StyleID="s177"/>
            <Cell ss:StyleID="s177"/>
            <Cell ss:StyleID="s177"/>
            <Cell ss:StyleID="s177"/>
            <Cell ss:StyleID="s177"/>
            <Cell ss:StyleID="s156"/>
          </Row>
          <Row>
            <Cell ss:Index="13" ss:StyleID="s175"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Дата отгрузки, передачи (сдачи) &quot;___&quot; _____________ ____ г.</Data>
            </Cell>
            <Cell ss:Index="12" ss:StyleID="s168">
              <Data ss:Type="String">[11]</Data>
            </Cell>
            <Cell ss:StyleID="s175"/>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Дата отгрузки, получения (приемки) &quot;___&quot; _____________ ____ г.</Data>
            </Cell>
            <Cell ss:Index="26" ss:StyleID="s168">
              <Data ss:Type="String">[16]</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
          </Row>
          <Row>
            <Cell ss:Index="13" ss:StyleID="s175"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Иные сведения об отгрузке, передаче</Data>
            </Cell>
            <Cell ss:Index="13" ss:StyleID="s175"/>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Иные сведения о получении, приемке</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s168">
              <Data ss:Type="String">[12]</Data>
            </Cell>
            <Cell ss:StyleID="s175"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:Index="26" ss:StyleID="s168">
              <Data ss:Type="String">[17]</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s166"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="10" ss:StyleID="s170">
              <Data ss:Type="String">(ссылки на неотъемлемые приложения, сопутствующие документы, иные документы и т.п.)</Data>
            </Cell>
            <Cell ss:StyleID="s172"/>
            <Cell ss:StyleID="s175"/>
            <Cell ss:MergeAcross="11" ss:StyleID="s170">
              <Data ss:Type="String">(информация о наличии/отсутствии претензии; ссылки на неотъемлемые приложения, и другие документы и т.п.)</Data>
            </Cell>
            <Cell ss:StyleID="s178"/>
            <Cell ss:Index="37" ss:StyleID="s178"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Ответственный за правильность оформления факта хозяйственной жизни</Data>
            </Cell>
            <Cell ss:Index="13" ss:StyleID="s175"/>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Ответственный за правильность оформления факта хозяйственной жизни</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:Index="7" ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s168">
              <Data ss:Type="String">[13]</Data>
            </Cell>
            <Cell ss:StyleID="s175"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:Index="22" ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:Index="26" ss:StyleID="s168">
              <Data ss:Type="String">[18]</Data>
            </Cell>
            <Cell ss:Index="32" ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s168"/>
            <Cell ss:StyleID="s166"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s151">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s156"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s151">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s156"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s151">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s152"/>
            <Cell ss:StyleID="s175"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s151">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s156"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s151">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s156"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s151">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s152"/>
            <Cell ss:Index="32" ss:StyleID="s152"/>
            <Cell ss:StyleID="s152"/>
            <Cell ss:StyleID="s152"/>
            <Cell ss:StyleID="s152"/>
            <Cell ss:StyleID="s152"/>
            <Cell ss:StyleID="s152"/>
            <Cell ss:StyleID="s177"/>
          </Row>
          <Row>
            <Cell ss:Index="13" ss:StyleID="s175"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Наименование экономического субъекта – составителя документа (в т.ч. комиссионера/агента)</Data>
            </Cell>
            <Cell ss:Index="13" ss:StyleID="s175"/>
            <Cell ss:StyleID="s62">
              <Data ss:Type="String">Наименование экономического субъекта – составителя документа</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s176"/>
            <Cell ss:StyleID="s168">
              <Data ss:Type="String">[14]</Data>
            </Cell>
            <Cell ss:StyleID="s175"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:Index="26" ss:StyleID="s168">
              <Data ss:Type="String">[19]</Data>
            </Cell>
            <Cell ss:Index="31" ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
            <Cell ss:StyleID="s166"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="10" ss:StyleID="s170">
              <Data ss:Type="String">(может не заполняться при проставлении печати в М.П., может быть указан ИНН / КПП)</Data>
            </Cell>
            <Cell ss:StyleID="s178"/>
            <Cell ss:StyleID="s179"/>
            <Cell ss:MergeAcross="11" ss:StyleID="s170">
              <Data ss:Type="String">(может не заполняться при проставлении печати в М.П., может быть указан ИНН / КПП)</Data>
            </Cell>
            <Cell ss:StyleID="s178"/>
          </Row>
          <Row>
            <Cell ss:Index="2">
              <Data ss:Type="String">М.П.</Data>
            </Cell>
            <Cell ss:Index="13" ss:StyleID="s175"/>
            <Cell ss:Index="15">
              <Data ss:Type="String">М.П.</Data>
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.31496062992125984"/>
            <Footer x:Margin="0.31496062992125984"/>
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
          <TopRowVisible>27</TopRowVisible>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>13</ActiveRow>
              <ActiveCol>9</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>
</xsl:stylesheet>
