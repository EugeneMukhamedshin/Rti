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
        <Style ss:ID="m292799136">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m292798728">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m292798464">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m292798484">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m292798504">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m292798524">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134893280">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134893320">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134893340">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134893360">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134893380">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134893076">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134893096">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134893136">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m134893156">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"/>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="m259019688">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s63">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s64">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s65">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s67">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s68">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s70">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s72">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s74">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s76">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s77">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s78">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s80">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="5"/>
        </Style>
        <Style ss:ID="s81">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s86">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s90">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="5"/>
          <Interior/>
        </Style>
        <Style ss:ID="s91">
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s93">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <Interior/>
        </Style>
        <Style ss:ID="s95">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s96">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s97">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s98">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s99">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s101">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s102">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s103">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s104">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s106">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s108">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s109">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s112">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s113">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s115">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="11" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s128">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s143">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s144">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
        </Style>
        <Style ss:ID="s152">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s155">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s157">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s159">
          <Alignment ss:Vertical="Top"/>
        </Style>
        <Style ss:ID="s161">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s166">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s168">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s170">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s171">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s173">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s177">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s178">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s179">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s181">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s184">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s185">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s186">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s187">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s188">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s189">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s190">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s191">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s195">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s196">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s197">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s199">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
          <Interior ss:Color="#FFFF00" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s200">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s202">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s204">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s205">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s206">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s208">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s210">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s213">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s217">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s218">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Накладная">
        <Table x:FullColumns="1" x:FullRows="1">
          <Column ss:AutoFitWidth="0" ss:Width="29.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="55.5"/>
          <Column ss:Index="4" ss:AutoFitWidth="0" ss:Width="33"/>
          <Column ss:AutoFitWidth="0" ss:Width="30.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="26.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="47.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="33.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="22.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="36"/>
          <Column ss:AutoFitWidth="0" ss:Width="30.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="33"/>
          <Column ss:AutoFitWidth="0" ss:Width="36.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="29.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="40.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="33"/>
          <Column ss:AutoFitWidth="0" ss:Width="65.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="70.5"/>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:Index="13" ss:MergeAcross="5" ss:StyleID="s63">
              <Data ss:Type="String">Унифицированная форма № ТОРГ-12 Утверждена постановлением</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:StyleID="s64"/>
            <Cell ss:StyleID="s64"/>
            <Cell ss:Index="13" ss:MergeAcross="4" ss:StyleID="s65">
              <Data ss:Type="String">Госкомстата России от 25.12.98 №132</Data>
            </Cell>
            <Cell ss:StyleID="s67">
              <Data ss:Type="String">Код</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:Index="13" ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:StyleID="s65"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s68">
              <Data ss:Type="String">Форма по ОКУД</Data>
            </Cell>
            <Cell ss:StyleID="s70">
              <Data ss:Type="Number">330212</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s72">
              <Data ss:Type="String">ОРГАНИЗАЦИЯ</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:MergeDown="1" ss:StyleID="s74">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@FullNameWithBankRequisites"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s68">
              <Data ss:Type="String">по ОКПО</Data>
            </Cell>
            <Cell ss:StyleID="s70">
              <Data ss:Type="Number">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Okpo"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="16.5">
            <Cell ss:MergeAcross="1" ss:StyleID="s76">
              <Data ss:Type="String">грузоотправитель, адрес ,номер телефона, банковские реквизиты</Data>
            </Cell>
            <Cell ss:Index="16" ss:StyleID="s77">
              <Data ss:Type="String">Вид деятельности по ОКДП</Data>
            </Cell>
            <Cell ss:StyleID="s77"/>
            <Cell ss:StyleID="s78"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="14" ss:StyleID="s80">
              <Data ss:Type="String">грузоотправитель, адрес ,номер телефона, банковские реквизиты</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s81"/>
            <Cell ss:MergeDown="1" ss:StyleID="m259019688"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="14" ss:StyleID="s90">
              <Data ss:Type="String">структурное подразделение</Data>
            </Cell>
            <Cell ss:StyleID="s91"/>
            <Cell ss:StyleID="s91"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s93">
              <Data ss:Type="String">ГРУЗОПОЛУЧАТЕЛЬ</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:MergeDown="1" ss:StyleID="s95">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Recipient/@FullNameWithBankRequisites"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s68">
              <Data ss:Type="String">по ОКПО</Data>
            </Cell>
            <Cell ss:StyleID="s96">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Recipient/@Okpo"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:Index="16" ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s99"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s101">
              <Data ss:Type="String">ПОСТАВЩИК</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:MergeDown="1" ss:StyleID="s95">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@FullName"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s68">
              <Data ss:Type="String">по ОКПО</Data>
            </Cell>
            <Cell ss:StyleID="s102">
              <Data ss:Type="Number">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Okpo"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:Index="16" ss:MergeAcross="1" ss:StyleID="s68"/>
            <Cell ss:StyleID="s103"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s101">
              <Data ss:Type="String">ПЛАТЕЛЬЩИК</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:MergeDown="1" ss:StyleID="s95">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@FullName"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s68">
              <Data ss:Type="String">по ОКПО</Data>
            </Cell>
            <Cell ss:StyleID="s104">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Okpo"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:StyleID="s97"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:Index="16" ss:MergeAcross="1" ss:StyleID="s68"/>
            <Cell ss:StyleID="s103"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s101">
              <Data ss:Type="String">ОСНОВАНИЕ</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:StyleID="s106">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/@Grounding"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s68">
              <Data ss:Type="String">Номер</Data>
            </Cell>
            <Cell ss:StyleID="s70"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="12" ss:StyleID="s108"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s68">
              <Data ss:Type="String">Дата</Data>
            </Cell>
            <Cell ss:StyleID="s70"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s106">
              <Data ss:Type="String">Транспортная накладная</Data>
            </Cell>
            <Cell ss:StyleID="s68">
              <Data ss:Type="String">Номер</Data>
            </Cell>
            <Cell ss:StyleID="s70">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date, 'ddMM\/yy')"/>-<xsl:value-of select="set[@name='Shipments']/Shipment/@SortOrder"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s68">
              <Data ss:Type="String">Дата</Data>
            </Cell>
            <Cell ss:StyleID="s109">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date)"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="5" ss:StyleID="s86">
              <Data ss:Type="String">договор, заказ-наряд</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s112">
              <Data ss:Type="String">Вид операции</Data>
            </Cell>
            <Cell ss:StyleID="s113"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15">
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s115">
              <Data ss:Type="String">Товарная накладная</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m134893076">
              <Data ss:Type="String">Номер документа</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m134893096">
              <Data ss:Type="String">Дата составления</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s81"/>
            <Cell ss:StyleID="s128"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15">
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s108"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m134893136">
              <Data ss:Type="Number">
                <xsl:value-of select="set[@name='Shipments']/Shipment/@SortOrder"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m134893156">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date, 'dd.MM.yyyy')"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s81"/>
            <Cell ss:StyleID="s143"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="0.75">
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="25.5" ss:StyleID="s144">
            <Cell ss:MergeDown="1" ss:StyleID="m134893280">
              <Data ss:Type="String">№ по п/п</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s152">
              <Data ss:Type="String">Товар</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m134893320">
              <Data ss:Type="String">Код</Data>
            </Cell>
            <Cell ss:StyleID="s155">
              <Data ss:Type="String">Единица измерения</Data>
            </Cell>
            <Cell ss:StyleID="s155"/>
            <Cell ss:MergeDown="1" ss:StyleID="m134893340">
              <Data ss:Type="String">Вид упак.</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m134893360">
              <Data ss:Type="String">Количество</Data>
            </Cell>
            <Cell ss:StyleID="s157">
              <Data ss:Type="String">Масса брутто</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m134893380">
              <Data ss:Type="String">Количе-ство (масса, нетто)</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m292798464">
              <Data ss:Type="String">Цена, руб.коп</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m292798484">
              <Data ss:Type="String">Сумма без учета НДС,руб.коп</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m292798504">
              <Data ss:Type="String">НДС</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m292798524">
              <Data ss:Type="String">Сумма с учетом НДС, руб</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="23.25" ss:StyleID="s159">
            <Cell ss:Index="2" ss:MergeAcross="3" ss:StyleID="s161">
              <Data ss:Type="String">наименование, характеристика,сорт,артикул товара</Data>
            </Cell>
            <Cell ss:Index="7" ss:StyleID="s166">
              <Data ss:Type="String">Наимено-вание</Data>
            </Cell>
            <Cell ss:StyleID="s166">
              <Data ss:Type="String">Код по ОКЕИ</Data>
            </Cell>
            <Cell ss:Index="10" ss:StyleID="s166">
              <Data ss:Type="String">в одном месте</Data>
            </Cell>
            <Cell ss:StyleID="s166">
              <Data ss:Type="String">мест, штук</Data>
            </Cell>
            <Cell ss:StyleID="s157"/>
            <Cell ss:Index="16" ss:StyleID="s166">
              <Data ss:Type="String">Ставка %</Data>
            </Cell>
            <Cell ss:StyleID="s166">
              <Data ss:Type="String">Сумма, руб.коп</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s170">
            <Cell ss:StyleID="s171">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s173">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:StyleID="s177">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:StyleID="s177">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:StyleID="s177">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:StyleID="s177">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:StyleID="s178">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:StyleID="s178">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:StyleID="s178">
              <Data ss:Type="Number">9</Data>
            </Cell>
            <Cell ss:StyleID="s178">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:StyleID="s178">
              <Data ss:Type="Number">11</Data>
            </Cell>
            <Cell ss:StyleID="s178">
              <Data ss:Type="Number">12</Data>
            </Cell>
            <Cell ss:StyleID="s177">
              <Data ss:Type="Number">13</Data>
            </Cell>
            <Cell ss:StyleID="s178">
              <Data ss:Type="Number">14</Data>
            </Cell>
            <Cell ss:StyleID="s178">
              <Data ss:Type="Number">15</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="set[@name='ShipmentItems']/ShipmentItem" />

          <Row>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m292798728">
              <Data ss:Type="String">Всего по накладной</Data>
            </Cell>
            <Cell ss:StyleID="s195"/>
            <Cell ss:StyleID="s195"/>
            <Cell ss:StyleID="s195"/>
            <Cell ss:StyleID="s196" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">1400</Data>
            </Cell>
            <Cell ss:StyleID="s197">
              <Data ss:Type="String">х</Data>
            </Cell>
            <Cell ss:StyleID="s196" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">1960</Data>
            </Cell>
            <Cell ss:StyleID="s185">
              <Data ss:Type="String">х</Data>
            </Cell>
            <Cell ss:StyleID="s196" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">352.8</Data>
            </Cell>
            <Cell ss:StyleID="s196" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">2312.8000000000002</Data>
            </Cell>
          </Row>
          <Row/>
          <Row>
            <Cell ss:MergeAcross="17" ss:StyleID="s106">
              <Data ss:Type="String">
                Товарная накладная имеет приложение на _________________  листах    и содержит   <xsl:value-of select="count(set[@name='ShipmentItems']/ShipmentItem)"/>    порядковых номеров записей
              </Data>
            </Cell>
            <Cell ss:StyleID="s77"/>
            <Cell ss:StyleID="s77"/>
            <Cell ss:StyleID="s77"/>
            <Cell ss:StyleID="s77"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="4" ss:StyleID="s106"/>
            <Cell ss:StyleID="s200"/>
            <Cell ss:StyleID="s200"/>
            <Cell ss:StyleID="s200"/>
            <Cell ss:StyleID="s200"/>
            <Cell ss:MergeAcross="5" ss:StyleID="s202">
              <Data ss:Type="String">Масса  груза (нетто)  </Data>
            </Cell>
            <Cell ss:StyleID="s204"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s206">
              <Data ss:Type="String">т</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="4" ss:StyleID="s106">
              <Data ss:Type="String">Всего мест    ________________________    </Data>
            </Cell>
            <Cell ss:StyleID="s77"/>
            <Cell ss:StyleID="s77"/>
            <Cell ss:StyleID="s77"/>
            <Cell ss:StyleID="s77"/>
            <Cell ss:MergeAcross="5" ss:StyleID="s184">
              <Data ss:Type="String">Масса  груза (брутто) </Data>
            </Cell>
            <Cell ss:StyleID="s208"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s206">
              <Data ss:Type="String">т</Data>
            </Cell>
          </Row>
          <Row/>
          <Row>
            <Cell ss:MergeAcross="4" ss:StyleID="s106">
              <Data ss:Type="String">Приложение (паспорта, сертификаты и т.п.) на</Data>
            </Cell>
            <Cell ss:StyleID="s98">
              <Data ss:Type="String">листах</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s210">
              <Data ss:Type="String">
                По доверности №<xsl:value-of select="set[@name='Shipments']/Shipment/@AuthorityLetter"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s98">
              <Data ss:Type="String">Всего отпущено на сумму:</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="7" ss:StyleID="s213" ss:Formula="=R[-7]C[14]">
              <Data ss:Type="Number">100</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="s210">
              <Data ss:Type="String">выданной  </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="10" ss:StyleID="m292799136"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s210">
              <Data ss:Type="String">Груз принял   </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18">
            <Cell ss:StyleID="s98">
              <Data ss:Type="String">Отпуск разрешил: </Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98">
              <Data ss:Type="String">Директор</Data>
            </Cell>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s98">
              <Data ss:Type="String">Холодников Ю.В.</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s210">
              <Data ss:Type="String">Груз получил грузополучатель_______________________________</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18">
            <Cell ss:MergeAcross="2" ss:StyleID="s106">
              <Data ss:Type="String">Главный (старший) бухгалтер</Data>
            </Cell>
            <Cell ss:StyleID="s218"/>
            <Cell ss:StyleID="s218"/>
            <Cell ss:StyleID="s98">
              <Data ss:Type="String">Раупова Т.В.</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s210">
              <Data ss:Type="String"> &quot;____&quot;______________________________________ 2017 г.</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18">
            <Cell ss:StyleID="s98">
              <Data ss:Type="String">Отпуск груза произвел:</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98">
              <Data ss:Type="String">Нач. цеха </Data>
            </Cell>
            <Cell ss:StyleID="s218"/>
            <Cell ss:StyleID="s218"/>
            <Cell ss:StyleID="s98">
              <Data ss:Type="String">Холодников М.Ю. &quot;_____&quot;_________2017г.</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s210"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s91"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98">
              <Data ss:Type="String">М.П.</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98">
              <Data ss:Type="String">М.П.</Data>
            </Cell>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
            <Cell ss:StyleID="s98"/>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.31496062992125984"/>
            <Footer x:Margin="0.31496062992125984"/>
            <PageMargins x:Bottom="0.35433070866141736" x:Left="0.70866141732283472"
             x:Right="0.31496062992125984" x:Top="0.35433070866141736"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <PageBreakZoom>70</PageBreakZoom>
          <Selected/>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
        <PageBreaks xmlns="urn:schemas-microsoft-com:office:excel">
          <RowBreaks>
            <RowBreak>
              <Row>
                <xsl:choose>
                  <xsl:when test="count(set[@name='ShipmentItems']/ShipmentItem)+29 > 45">
                    <xsl:value-of select="count(set[@name='ShipmentItems']/ShipmentItem)+25"/>
                  </xsl:when>
                  <xsl:when test="count(set[@name='ShipmentItems']/ShipmentItem)+40 > 45">
                    <xsl:value-of select="count(set[@name='ShipmentItems']/ShipmentItem)+29"/>
                  </xsl:when>
                  <xsl:otherwise>45</xsl:otherwise>
                </xsl:choose>
              </Row>
            </RowBreak>
          </RowBreaks>
        </PageBreaks>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="set[@name='ShipmentItems']/ShipmentItem">
    <xsl:call-template name = "ShipmentItemRow"/>
  </xsl:template>

  <xsl:template name="ShipmentItemRow">
    <Row ss:AutoFitHeight="0" ss:Height="13.5">
      <Cell ss:StyleID="s179">
        <Data ss:Type="Number">
          <xsl:number/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="3" ss:StyleID="s181">
        <Data ss:Type="String">
          <xsl:value-of select="@FullDetailName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s179"/>
      <Cell ss:StyleID="s185">
        <Data ss:Type="String">
          <xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s185">
        <Data ss:Type="Number">
          <xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Code"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s186">
        <Data ss:Type="String">
          <xsl:value-of select="@PackType"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s187">
        <Data ss:Type="Number">
          <xsl:value-of select="@CountInPlace"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s188">
        <Data ss:Type="Number">
          <xsl:value-of select="@CountOfPlaces"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s188"/>
      <Cell ss:StyleID="s188">
        <Data ss:Type="Number">
          <xsl:value-of select="@Count"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s189">
        <Data ss:Type="Number">
          <xsl:value-of select="@RealPrice"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s190">
        <Data ss:Type="Number">
          <xsl:value-of select="@Sum"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s191">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsPercent"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s187">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsSum"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s190">
        <Data ss:Type="Number">
          <xsl:value-of select="@SumWithNds"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
