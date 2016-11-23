<?xml version="1.0" encoding="utf-8"?>
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
        <Style ss:ID="m244544384">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244544424">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244544444">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244544464">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244544484">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244544504">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244544524">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244544180">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244544200">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244544240">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244544280">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244544300">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244544320">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244544340">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244543936">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244543956">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244543976">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244543996">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244543732">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244543772">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244543792">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244543812">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244543488">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244543508">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538696">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538756">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538776">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538796">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538816">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244538836">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538432">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538452">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538472">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244538492">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244538512">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538532">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538552">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538572">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538208">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538228">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538268">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244538288">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244538328">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244538368">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244538388">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537984">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538024">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538044">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538064">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244538084">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537760">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537780">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537800">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537820">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537860">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537900">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537920">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537940">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537536">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537576">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537616">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537636">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537656">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537676">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537696">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537716">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537312">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537332">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537352">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537372">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537412">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537108">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537148">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244537168">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537208">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537228">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537248">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244537268">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536864">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536884">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536904">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536924">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536944">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536964">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536640">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536660">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536700">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536740">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536760">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536780">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536800">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536820">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536416">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536436">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536476">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536496">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536516">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536192">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536212">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536232">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536272">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536292">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536312">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536332">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536352">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536372">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535968">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535988">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244536028">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536048">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536088">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536128">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244536148">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244535744">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535784">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535804">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535824">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535844">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535520">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535540">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535560">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535580">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535620">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244535660">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244535680">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244535700">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535296">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244535336">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244535376">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244535396">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244535416">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535436">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535456">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244535476">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244535008">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244535028">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535048">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535068">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244535108">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534804">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534844">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534864">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534904">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534924">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534944">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534964">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534560">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534580">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534600">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534620">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534640">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534660">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534680">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534700">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534336">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534356">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534396">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534416">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534456">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534496">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534516">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534112">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534152">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534172">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534192">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244534212">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533888">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533908">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533928">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533948">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533988">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534028">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534048">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244534068">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533664">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533704">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533744">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533764">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533784">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533804">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533824">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533844">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533440">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533460">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533480">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533500">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533540">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533236">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533276">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533296">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533336">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533356">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533376">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533396">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532992">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533012">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244533032">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533052">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533072">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244533092">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532788">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244532808">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244532848">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244532888">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244532908">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244532928">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532948">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532544">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532564">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532584">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532604">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532624">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244532644">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532664">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532684">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532320">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532340">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532360">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532380">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532400">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532440">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244532480">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244532500">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532096">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532136">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532176">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532216">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532256">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531872">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531892">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531912">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531952">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531992">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244532032">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531648">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244531668">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531688">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531708">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531728">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531748">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531768">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531788">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531808">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531828">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531424">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244531444">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531464">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531484">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531524">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244531220">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244531240">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531260">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244531280">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531320">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531340">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531360">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531380">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530912">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530932">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530952">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530972">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530992">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531012">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531032">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244531052">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530688">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530708">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530748">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530768">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530808">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530848">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530868">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530464">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530504">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530524">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530544">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530564">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530240">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530260">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530280">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530300">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530340">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530380">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530400">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530420">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530016">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530056">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530096">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530116">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530136">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530156">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244530176">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244530196">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244529792">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244529812">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529832">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529852">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529892">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244529588">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244529628">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244529648">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529688">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529708">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529728">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529748">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529344">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529364">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529384">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244529404">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244529424">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529444">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529464">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529484">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529120">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529140">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244529180">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244529200">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244529240">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244529280">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244529300">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528896">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528936">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528956">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528976">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528996">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528672">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528692">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528712">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528732">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528772">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528812">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528832">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528852">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528448">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528488">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528528">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528548">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528568">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528588">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528608">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528628">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528224">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528244">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528264">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528284">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528324">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528020">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528060">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244528080">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528120">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528140">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528160">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244528180">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527776">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244527796">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244527816">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527836">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527856">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527876">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527552">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244527592">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527632">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244527672">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244527692">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244527712">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527732">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527328">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527348">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527388">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m244527408">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527428">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527448">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527468">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527488">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527104">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527124">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527144">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527164">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527184">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527224">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527244">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m244527284">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737248">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737268">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737288">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737308">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737368">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737408">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737428">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737024">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737044">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737064">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737104">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m220737124">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m220737144">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m220737164">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220737184">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736800">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736820">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736840">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736860">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736920">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736596">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736616">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736636">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736696">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736756">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m220736392">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m220736432">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m220736472">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m220736492">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m220736512">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736532">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736148">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736188">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736248">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m220736268">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Double" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s64">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s65">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
        </Style>
        <Style ss:ID="s66">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
        </Style>
        <Style ss:ID="s67">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s68">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="9"/>
        </Style>
        <Style ss:ID="s69">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s70">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="11.5"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s71">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
        </Style>
        <Style ss:ID="s72">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s73">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s74">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s75">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
        </Style>
        <Style ss:ID="s76">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s77">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="11" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s187">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
        </Style>
        <Style ss:ID="s191">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s192">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s197">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
        </Style>
        <Style ss:ID="s198">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="9"/>
        </Style>
        <Style ss:ID="s202">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Bold="1"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s210">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s211">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s219">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s220">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s223">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
        </Style>
        <Style ss:ID="s224">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
        </Style>
        <Style ss:ID="s225">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s227">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
        </Style>
        <Style ss:ID="s231">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s235">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s243">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s257">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s261">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s264">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s266">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s275">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s285">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s294">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s295">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" x:Family="Swiss" ss:Size="8.5"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Стр 1.">
        <Table ss:ExpandedColumnCount="149" ss:ExpandedRowCount="61" x:FullColumns="1"
         x:FullRows="1" ss:StyleID="s64" ss:DefaultColumnWidth="4.5"
         ss:DefaultRowHeight="9.75">
          <Row ss:AutoFitHeight="0" ss:Height="47.25" ss:StyleID="s65">
            <Cell ss:Index="105" ss:MergeAcross="44" ss:StyleID="s197">
              <Data
      ss:Type="String">Типовая межотраслевая форма № М-15&#10;Утверждена Постановлением Госкомстата России&#10;от 30.10.97 № 71а</Data>
            </Cell>
          </Row>
          <Row ss:Height="15" ss:StyleID="s67">
            <Cell ss:Index="50" ss:StyleID="s77">
              <Data ss:Type="String">НАКЛАДНАЯ №</Data>
            </Cell>
            <Cell ss:Index="69" ss:MergeAcross="7" ss:StyleID="s202"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="14.25" ss:StyleID="s68">
            <Cell ss:Index="44" ss:StyleID="s70">
              <Data ss:Type="String">на отпуск материалов на сторону</Data>
            </Cell>
            <Cell ss:Index="132" ss:MergeAcross="17" ss:StyleID="s198">
              <Data
      ss:Type="String">Коды</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12" ss:StyleID="s65">
            <Cell ss:Index="130" ss:StyleID="s69">
              <Data ss:Type="String">Форма по ОКУД</Data>
            </Cell>
            <Cell ss:Index="132" ss:MergeAcross="17" ss:StyleID="m220736392">
              <Data
      ss:Type="String">0315007</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12" ss:StyleID="s65">
            <Cell>
              <Data ss:Type="String">Организация</Data>
            </Cell>
            <Cell ss:Index="13" ss:MergeAcross="108" ss:StyleID="s187"/>
            <Cell ss:Index="130" ss:StyleID="s69">
              <Data ss:Type="String">по ОКПО</Data>
            </Cell>
            <Cell ss:Index="132" ss:MergeAcross="17" ss:StyleID="m220736432"/>
          </Row>
          <Row ss:Height="10.5"/>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:Index="34" ss:MergeAcross="8" ss:MergeDown="1" ss:StyleID="m220736616">
              <Data
      ss:Type="String">&#10;Дата&#10;состав-ления</Data>
            </Cell>
            <Cell ss:MergeAcross="11" ss:MergeDown="1" ss:StyleID="m220736148">
              <Data
      ss:Type="String">&#10;Код&#10;вида&#10;операции</Data>
            </Cell>
            <Cell ss:MergeAcross="29" ss:StyleID="m220736512">
              <Data ss:Type="String">Отправитель</Data>
            </Cell>
            <Cell ss:MergeAcross="29" ss:StyleID="m220736268">
              <Data ss:Type="String">Получатель</Data>
            </Cell>
            <Cell ss:MergeAcross="34" ss:StyleID="m220736188">
              <Data ss:Type="String">Ответственный за поставку</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="50.25">
            <Cell ss:Index="55" ss:MergeAcross="14" ss:StyleID="s191">
              <Data
      ss:Type="String">&#10;структурное подразделение</Data>
            </Cell>
            <Cell ss:MergeAcross="14" ss:StyleID="m220736532">
              <Data ss:Type="String">&#10;вид&#10;деятельности</Data>
            </Cell>
            <Cell ss:MergeAcross="14" ss:StyleID="s191">
              <Data ss:Type="String">&#10;структурное подразделение</Data>
            </Cell>
            <Cell ss:MergeAcross="14" ss:StyleID="m220736248">
              <Data ss:Type="String">&#10;вид&#10;деятельности</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="s191">
              <Data ss:Type="String">&#10;структур-&#10;ное подраз-деление</Data>
            </Cell>
            <Cell ss:MergeAcross="14" ss:StyleID="s192">
              <Data ss:Type="String">&#10;вид&#10;деятельности</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m220736636">
              <Data ss:Type="String">&#10;код&#10;испол- нителя</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:Index="34" ss:MergeAcross="8" ss:StyleID="m220736472"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m220736492"/>
            <Cell ss:MergeAcross="14" ss:StyleID="s210"/>
            <Cell ss:MergeAcross="14" ss:StyleID="m220736596"/>
            <Cell ss:MergeAcross="14" ss:StyleID="s210"/>
            <Cell ss:MergeAcross="14" ss:StyleID="m220736696"/>
            <Cell ss:MergeAcross="10" ss:StyleID="s210"/>
            <Cell ss:MergeAcross="14" ss:StyleID="s211"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m220736756"/>
          </Row>
          <Row ss:Index="11" ss:Height="11.25" ss:StyleID="s65">
            <Cell>
              <Data ss:Type="String">Основание</Data>
            </Cell>
            <Cell ss:Index="11" ss:StyleID="s71"/>
            <Cell ss:MergeAcross="137" ss:StyleID="s187"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18.75" ss:StyleID="s65">
            <Cell>
              <Data ss:Type="String">Кому</Data>
            </Cell>
            <Cell ss:Index="7" ss:MergeAcross="67" ss:StyleID="s223"/>
            <Cell ss:MergeAcross="10" ss:StyleID="s227">
              <Data ss:Type="String">Через кого</Data>
            </Cell>
            <Cell ss:MergeAcross="63" ss:StyleID="s224"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="14.25"/>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:MergeAcross="23" ss:StyleID="m220737308">
              <Data ss:Type="String">Корреспондирующий счет</Data>
            </Cell>
            <Cell ss:MergeAcross="21" ss:StyleID="m244527244">
              <Data ss:Type="String">Материальные ценности</Data>
            </Cell>
            <Cell ss:MergeAcross="18" ss:StyleID="m220736920">
              <Data ss:Type="String">Единица измерения</Data>
            </Cell>
            <Cell ss:MergeAcross="15" ss:StyleID="m220737288">
              <Data ss:Type="String">Количество</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:MergeDown="1" ss:StyleID="m244527144">
              <Data
      ss:Type="String">&#10;Цена,&#10;руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:MergeDown="1" ss:StyleID="m244527164">
              <Data
      ss:Type="String">&#10;Сумма &#10;без учета&#10;НДС,&#10;руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:MergeDown="1" ss:StyleID="m244527224">
              <Data
      ss:Type="String">&#10;Сумма&#10;НДС,&#10;руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:MergeDown="1" ss:StyleID="m244527184">
              <Data
      ss:Type="String">&#10;Всего&#10;с учетом&#10;НДС,&#10;руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="15" ss:StyleID="m244527428">
              <Data ss:Type="String">Номер</Data>
            </Cell>
            <Cell ss:MergeAcross="16" ss:MergeDown="1" ss:StyleID="m244527408">
              <Data
      ss:Type="String">&#10;Порядковый но-&#10;мер записи по&#10;складской&#10;картотеке</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="58.5">
            <Cell ss:MergeAcross="9" ss:StyleID="m244527124">
              <Data ss:Type="String">&#10;счет,&#10;субсчет</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m244527104">
              <Data ss:Type="String">&#10;код аналити-ческого учета</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="s225">
              <Data ss:Type="String">&#10;наименование,&#10;сорт, размер,&#10;марка</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m220737428">
              <Data ss:Type="String">&#10;номен-клатур-ный&#10;номер</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="s225">
              <Data ss:Type="String">&#10;код</Data>
            </Cell>
            <Cell ss:MergeAcross="11" ss:StyleID="m244527284">
              <Data ss:Type="String">&#10;наименова-&#10;ние</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="s225">
              <Data ss:Type="String">&#10;надлежит отпус-&#10;тить</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="m220737268">
              <Data ss:Type="String">&#10;отпу-&#10;щено</Data>
            </Cell>
            <Cell ss:Index="117" ss:MergeAcross="6" ss:StyleID="s225">
              <Data
      ss:Type="String">&#10;инвен-&#10;тар-&#10;ный</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m244527448">
              <Data ss:Type="String">&#10;паспорта</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:MergeAcross="9" ss:StyleID="s243">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m220737368">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="s220">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m220737408">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="s219">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:MergeAcross="11" ss:StyleID="m220737024">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="s220">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="m220736800">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m220736820">
              <Data ss:Type="Number">9</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="m220736840">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m244527468">
              <Data ss:Type="Number">11</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m244527488">
              <Data ss:Type="Number">12</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="s243">
              <Data ss:Type="Number">13</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m220737248">
              <Data ss:Type="Number">14</Data>
            </Cell>
            <Cell ss:MergeAcross="16" ss:StyleID="m220736860">
              <Data ss:Type="Number">15</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s231"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m220737104"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s257"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m220737124"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m220737144"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244527592"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m220737164"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m220737184"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m220737044"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m220737064"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244527328"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244527348"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s235"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244527388"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244527552"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244527632"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244527672"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244527692"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244527712"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244527732"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244527816"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244527836"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244527856"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244527876"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244528080"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244527776"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244527796"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244528020"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244528060"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244528224"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244528244"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244528264"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244528284"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244528120"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244528140"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244528160"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244528180"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244528324"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244528448"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244528488"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244528528"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244528548"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244528568"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244528588"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244528672"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244528692"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244528712"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244528732"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244528896"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244528608"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244528628"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244528772"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244528812"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244528832"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244528852"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244529120"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244529140"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244528936"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244528956"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244528976"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244528996"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244529180"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244529200"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244529240"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244529280"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244529300"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244529344"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244529364"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244529424"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244529444"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244529464"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244529484"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244529648"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244529384"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244529404"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244543732"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244543772"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244543792"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244543812"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244543488"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244543508"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244543936"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244543956"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244543976"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244543996"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244544180"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244544200"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244529588"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244529628"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244529792"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244529812"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244529832"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244529852"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244529688"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244529708"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244529728"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244529748"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244529892"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244530016"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244530056"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244530096"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244530116"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244530136"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244530156"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244530240"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244530260"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244530280"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244530300"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244530464"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244530176"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244530196"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244530340"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244530380"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244530400"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244530420"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244530688"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244530708"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244530504"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244530524"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244530544"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244530564"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244530748"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244530768"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244530808"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244530848"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244530868"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244530912"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244530932"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244530992"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244531012"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244531032"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244531052"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244531280"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244530952"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244530972"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s275"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244531220"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244531240"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244531260"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244531424"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244531444"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244531464"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244531484"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244531320"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244531340"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244531360"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244531380"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s285"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244531524"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244531648"/>
          </Row>
          <Row ss:Height="11.25" ss:StyleID="s65">
            <Cell ss:Index="149" ss:StyleID="s66">
              <Data ss:Type="String">Оборотная сторона формы № М-15</Data>
            </Cell>
          </Row>
          <Row ss:Height="10.5"/>
          <Row ss:AutoFitHeight="0" ss:Height="11.25">
            <Cell ss:MergeAcross="23" ss:StyleID="m244531668">
              <Data ss:Type="String">Корреспондирующий счет</Data>
            </Cell>
            <Cell ss:MergeAcross="21" ss:StyleID="m244531688">
              <Data ss:Type="String">Материальные ценности</Data>
            </Cell>
            <Cell ss:MergeAcross="18" ss:StyleID="m244531708">
              <Data ss:Type="String">Единица измерения</Data>
            </Cell>
            <Cell ss:MergeAcross="15" ss:StyleID="m244531728">
              <Data ss:Type="String">Количество</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:MergeDown="1" ss:StyleID="m244531748">
              <Data
      ss:Type="String">&#10;Цена,&#10;руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:MergeDown="1" ss:StyleID="m244531768">
              <Data
      ss:Type="String">&#10;Сумма &#10;без учета&#10;НДС,&#10;руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:MergeDown="1" ss:StyleID="m244531788">
              <Data
      ss:Type="String">&#10;Сумма&#10;НДС,&#10;руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:MergeDown="1" ss:StyleID="m244531808">
              <Data
      ss:Type="String">&#10;Всего&#10;с учетом&#10;НДС,&#10;руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="15" ss:StyleID="m244531828">
              <Data ss:Type="String">Номер</Data>
            </Cell>
            <Cell ss:MergeAcross="16" ss:MergeDown="1" ss:StyleID="m244531872">
              <Data
      ss:Type="String">&#10;Порядковый но-&#10;мер записи по&#10;складской&#10;картотеке</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="58.5">
            <Cell ss:MergeAcross="9" ss:StyleID="m244531892">
              <Data ss:Type="String">&#10;счет,&#10;субсчет</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m244531912">
              <Data ss:Type="String">&#10;код аналити-ческого учета</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="s225">
              <Data ss:Type="String">&#10;наименование,&#10;сорт, размер,&#10;марка</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m244531952">
              <Data ss:Type="String">&#10;номен-клатур-ный&#10;номер</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="s225">
              <Data ss:Type="String">&#10;код</Data>
            </Cell>
            <Cell ss:MergeAcross="11" ss:StyleID="m244531992">
              <Data ss:Type="String">&#10;наименова-&#10;ние</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="s225">
              <Data ss:Type="String">&#10;надлежит отпус-&#10;тить</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="m244532032">
              <Data ss:Type="String">&#10;отпу-&#10;щено</Data>
            </Cell>
            <Cell ss:Index="117" ss:MergeAcross="6" ss:StyleID="s225">
              <Data
      ss:Type="String">&#10;инвен-&#10;тар-&#10;ный</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m244532096">
              <Data ss:Type="String">&#10;паспорта</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15">
            <Cell ss:MergeAcross="9" ss:StyleID="s243">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m244532136">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="s220">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m244532176">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="s219">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:MergeAcross="11" ss:StyleID="m244532216">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="s220">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="m244532340">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m244532360">
              <Data ss:Type="Number">9</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="m244532380">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m244532400">
              <Data ss:Type="Number">11</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m244532500">
              <Data ss:Type="Number">12</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="s243">
              <Data ss:Type="Number">13</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m244532256">
              <Data ss:Type="Number">14</Data>
            </Cell>
            <Cell ss:MergeAcross="16" ss:StyleID="m244532320">
              <Data ss:Type="Number">15</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s231"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244532440"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s257"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244532480"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244532624"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244532644"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244532664"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244532684"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244532544"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244532564"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244532584"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244532604"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s235"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244532788"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244532808"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244532848"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244532888"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244532908"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244532928"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244532948"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244533032"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244533052"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244533072"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244533092"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244533296"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244532992"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244533012"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244533236"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244533276"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244533440"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244533460"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244533480"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244533500"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244533336"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244533356"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244533376"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244533396"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244533540"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244533664"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244536700"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244536740"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244536760"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244536780"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244536800"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244536904"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244536924"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244536944"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244536964"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244537168"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244536864"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244536884"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244537108"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244537148"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244537312"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244537332"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244537352"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244537372"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244537208"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244537228"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244537248"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244537268"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244537412"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244537536"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244537576"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244537616"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244537636"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244537656"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244537676"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244537760"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244537780"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244537800"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244537820"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244537984"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244537696"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244537716"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244537860"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244537900"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244537920"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244537940"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244538208"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244538228"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244538024"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244538044"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244538064"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244538084"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244538268"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244538288"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244538328"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244538368"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244538388"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244538432"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244538452"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244538512"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244538532"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244538552"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244538572"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244538696"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244538472"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244538492"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244544240"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244544280"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244544300"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244544320"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244544340"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244544464"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244544484"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244544504"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244544524"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244544384"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244544424"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244544444"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244533704"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244533744"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244533764"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244533784"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244533804"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244533888"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244533908"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244533928"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244533948"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244534112"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244533824"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244533844"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244533988"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244534028"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244534048"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244534068"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244534336"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244534356"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244534152"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244534172"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244534192"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244534212"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244534396"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244534416"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244534456"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244534496"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244534516"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244534560"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244534580"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244534640"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244534660"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244534680"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244534700"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244534864"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244534600"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244534620"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244534804"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244534844"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244535008"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244535028"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244535048"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244535068"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244534904"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244534924"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244534944"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244534964"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244535108"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244535296"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244535336"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244535376"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244535396"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244535416"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244535436"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244535520"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244535540"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244535560"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244535580"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244535744"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244535456"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244535476"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244535620"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244535660"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244535680"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244535700"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244535968"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244535988"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244535784"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244535804"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244535824"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244535844"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244536028"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244536048"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s261"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244536088"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s264"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244536128"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244536148"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244536192"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244536212"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244536312"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244536332"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244536352"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244536372"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244536232"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s266"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244536272"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244536292"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s72">
            <Cell ss:MergeAcross="9" ss:StyleID="s275"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244536476"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m244536496"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244536516"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244538816"/>
            <Cell ss:MergeAcross="11" ss:StyleID="m244538836"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244536416"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m244536436"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244536820"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m244538756"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m244538776"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244538796"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s285"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m244536640"/>
            <Cell ss:MergeAcross="16" ss:StyleID="m244536660"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18" ss:StyleID="s65"/>
          <Row ss:Height="11.25" ss:StyleID="s65">
            <Cell>
              <Data ss:Type="String">Всего отпущено</Data>
            </Cell>
            <Cell ss:Index="16" ss:MergeAcross="57" ss:StyleID="s223"/>
            <Cell ss:Index="75">
              <Data ss:Type="String">наименований</Data>
            </Cell>
          </Row>
          <Row ss:Height="8.25" ss:StyleID="s73">
            <Cell ss:Index="16" ss:MergeAcross="57" ss:StyleID="s294">
              <Data
      ss:Type="String">(прописью)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12.75" ss:StyleID="s65">
            <Cell>
              <Data ss:Type="String">на сумму</Data>
            </Cell>
            <Cell ss:Index="10" ss:MergeAcross="38" ss:StyleID="s223"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s295">
              <Data ss:Type="String">руб.</Data>
            </Cell>
            <Cell ss:MergeAcross="19" ss:StyleID="s223"/>
            <Cell ss:Index="75">
              <Data ss:Type="String">коп.</Data>
            </Cell>
            <Cell ss:Index="92">
              <Data ss:Type="String">в том числе сумма НДС</Data>
            </Cell>
            <Cell ss:Index="114" ss:MergeAcross="14" ss:StyleID="s223"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s295">
              <Data ss:Type="String">руб.</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="s223"/>
            <Cell ss:Index="146">
              <Data ss:Type="String">коп.</Data>
            </Cell>
          </Row>
          <Row ss:Height="8.25" ss:StyleID="s73">
            <Cell ss:Index="10" ss:MergeAcross="38" ss:StyleID="s294">
              <Data
      ss:Type="String">(прописью)</Data>
            </Cell>
          </Row>
          <Row ss:Height="11.25" ss:StyleID="s65"/>
          <Row ss:Height="11.25" ss:StyleID="s65">
            <Cell>
              <Data ss:Type="String">Отпуск разрешил</Data>
            </Cell>
            <Cell ss:Index="17" ss:MergeAcross="9" ss:StyleID="s223"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:Index="29" ss:MergeAcross="7" ss:StyleID="s223"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:Index="39" ss:MergeAcross="14" ss:StyleID="s223"/>
            <Cell ss:Index="74" ss:StyleID="s74">
              <Data ss:Type="String">Главный бухгалтер</Data>
            </Cell>
            <Cell ss:Index="95" ss:MergeAcross="7" ss:StyleID="s223"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:Index="105" ss:MergeAcross="16" ss:StyleID="s223"/>
          </Row>
          <Row ss:Height="8.25" ss:StyleID="s73">
            <Cell ss:Index="17" ss:MergeAcross="9" ss:StyleID="s294">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s76"/>
            <Cell ss:Index="29" ss:MergeAcross="7" ss:StyleID="s294">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s76"/>
            <Cell ss:Index="39" ss:MergeAcross="14" ss:StyleID="s294">
              <Data
      ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
            <Cell ss:Index="95" ss:MergeAcross="7" ss:StyleID="s294">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s76"/>
            <Cell ss:Index="105" ss:MergeAcross="16" ss:StyleID="s294">
              <Data
      ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
          </Row>
          <Row ss:Height="11.25" ss:StyleID="s65"/>
          <Row ss:Height="11.25" ss:StyleID="s65">
            <Cell>
              <Data ss:Type="String">Отпустил</Data>
            </Cell>
            <Cell ss:Index="10" ss:MergeAcross="9" ss:StyleID="s223"/>
            <Cell ss:Index="21" ss:MergeAcross="7" ss:StyleID="s223"/>
            <Cell ss:Index="30" ss:MergeAcross="14" ss:StyleID="s223"/>
            <Cell ss:Index="74">
              <Data ss:Type="String">Получил</Data>
            </Cell>
            <Cell ss:Index="83" ss:MergeAcross="9" ss:StyleID="s223"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:Index="95" ss:MergeAcross="7" ss:StyleID="s223"/>
            <Cell ss:StyleID="s75"/>
            <Cell ss:Index="105" ss:MergeAcross="16" ss:StyleID="s223"/>
          </Row>
          <Row>
            <Cell ss:Index="10" ss:MergeAcross="9" ss:StyleID="s294">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s73"/>
            <Cell ss:MergeAcross="7" ss:StyleID="s294">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s73"/>
            <Cell ss:MergeAcross="14" ss:StyleID="s294">
              <Data ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
            <Cell ss:Index="83" ss:MergeAcross="9" ss:StyleID="s294">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s76"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:MergeAcross="7" ss:StyleID="s294">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s76"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:MergeAcross="16" ss:StyleID="s294">
              <Data ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.19685039370078741"/>
            <Footer x:Margin="0.19685039370078741"/>
            <PageMargins x:Bottom="0.39370078740157483" x:Left="0.98425196850393704"
             x:Right="0.94488188976377963" x:Top="0.70866141732283472"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <ShowPageBreakZoom/>
          <PageBreakZoom>100</PageBreakZoom>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>20</ActiveRow>
              <ActiveCol>235</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
        <PageBreaks xmlns="urn:schemas-microsoft-com:office:excel">
          <RowBreaks>
            <RowBreak>
              <Row>28</Row>
            </RowBreak>
          </RowBreaks>
        </PageBreaks>
      </Worksheet>
      <Worksheet ss:Name="Стр 2.">
        <Table ss:ExpandedColumnCount="1" ss:ExpandedRowCount="1" x:FullColumns="1"
         x:FullRows="1">
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <TopRowVisible>15</TopRowVisible>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>38</ActiveRow>
              <ActiveCol>15</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>
</xsl:stylesheet>
