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
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000"/>
          <Interior/>
          <NumberFormat/>
          <Protection/>
        </Style>
        <Style ss:ID="s17" ss:Name="Обычный_Sheet1">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204"/>
          <Interior/>
          <NumberFormat/>
          <Protection/>
        </Style>
        <Style ss:ID="m217498240">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m217498260">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m217498300">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="9"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="m217498320">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="9"
           ss:Bold="1"/>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="m217497920">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m217497940">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m217497960">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m217497980">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m217498000">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m217498020">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m217498040">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m217498060">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m217498080">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085568">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085588">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085608">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085628">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085648">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085668">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085688">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085708">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085728">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085748">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085248">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m206085268">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m206085328">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085348">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="m206085368">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m206085388">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s18" ss:Parent="s17">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="s19">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s20">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s23">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s24">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="9"
           ss:Bold="1" ss:Underline="Single"/>
        </Style>
        <Style ss:ID="s25">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s26">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s28">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Underline="Single"/>
        </Style>
        <Style ss:ID="s29">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s30">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s31">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s32">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Bold="1" ss:Underline="Single"/>
        </Style>
        <Style ss:ID="s33">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s34">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s35">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Underline="Single"/>
        </Style>
        <Style ss:ID="s36">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s37">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s50">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s66">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s70">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat ss:Format="0"/>
        </Style>
        <Style ss:ID="s71">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s75">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s76">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s77">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s78">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="s79">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="0%"/>
        </Style>
        <Style ss:ID="s80">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="s81">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s82">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s83">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"/>
        </Style>
        <Style ss:ID="s84">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s85">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s86">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s92">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="s93">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s116">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="7"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s124">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Names>
          <NamedRange ss:Name="Print_Area" ss:RefersTo="=Лист1!R1C1:R{31+count(set[@name='ShipmentItems']/ShipmentItem)}C17"/>
        </Names>
        <Table x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="33"/>
          <Column ss:Index="4" ss:AutoFitWidth="0" ss:Width="31.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="38.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="51.75"/>
          <Column ss:Index="10" ss:AutoFitWidth="0" ss:Width="36.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="37.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="45.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="41.25"/>
          <Column ss:Width="50.25" ss:Span="1"/>
          <Column ss:Index="17" ss:AutoFitWidth="0" ss:Width="53.25"/>
          <Row>

            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Унифицированная форма № ТОРГ-12 Утверждена</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">постановлением Госкомстата России от 25.12.98 № 132</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:Height="15.75">
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s20">
              <Data ss:Type="String">Код</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s30">
              <Data ss:Type="String">Форма по ОКУД</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s23">
              <Data ss:Type="Number">330212</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s24">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@FullName"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">по ОКПО</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s26">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Okpo"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="13" ss:StyleID="s124">
              <Data ss:Type="String">грузоотправитель, адрес, номер телефона, банковские реквизиты</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s28">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@BankRequisites"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Вид деятельности по ОКДП</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="13" ss:StyleID="s124">
              <Data ss:Type="String">структурное подразделение</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String"> </Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s25">
              <Data ss:Type="String">Грузополучатель</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s24">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Recipient/@FullName"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s30">
              <Data ss:Type="String">по ОКПО</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s31">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Recipient/@Okpo"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s28">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Recipient/@BankRequisites"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s25">
              <Data ss:Type="String">Поставщик</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s32" ss:Formula="=R[-6]C[-2]">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@FullName"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s30">
              <Data ss:Type="String">по ОКПО</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s26">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Okpo"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s28">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@BankRequisites"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s25">
              <Data ss:Type="String">Плательщик </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s24" ss:Formula="=R[-4]C">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@FullName"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s30">
              <Data ss:Type="String">по ОКПО</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s33">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Okpo"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s28" ss:Formula="=R[-4]C">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@BankRequisites"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s34">
              <Data ss:Type="String">Основание</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s35">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/@Grounding"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s34">
              <Data ss:Type="String"> </Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s37">
              <Data ss:Type="String">номер</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s33">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date, 'ddMM\/yy')"/>-<xsl:value-of select="set[@name='Shipments']/Shipment/@SortOrder"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="13" ss:StyleID="s36">
              <Data ss:Type="String">договор, заказ-наряд</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s37">
              <Data ss:Type="String">дата</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s33">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date)"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s30">
              <Data ss:Type="String">Транспортная накладная</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s37">
              <Data ss:Type="String">номер</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:Height="15.75">
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m217498240">
              <Data ss:Type="String">Номер документа</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m217498260">
              <Data ss:Type="String">Дата составления</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s37">
              <Data ss:Type="String">дата</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>

          </Row>
          <Row ss:Height="15.75">
            <Cell ss:MergeAcross="5" ss:StyleID="s116">
              <Data ss:Type="String">ТОВАРНАЯ НАКЛАДНАЯ</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m217498300">
              <Data ss:Type="Number">
                <xsl:value-of select="set[@name='Shipments']/Shipment/@SortOrder"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m217498320">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date, 'dd.MM.yyyy')"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m217497920">
              <Data ss:Type="String">Вид операции</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeDown="2" ss:StyleID="m217497940">
              <Data ss:Type="String">Номер по порядку</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="m217497960">
              <Data ss:Type="String">Товар</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m217497980">
              <Data ss:Type="String">Единица измерения</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="m217498000">
              <Data ss:Type="String">Вид упаковки</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m217498020">
              <Data ss:Type="String">Количество</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="m217498040">
              <Data ss:Type="String">Масса, брутто</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="m206085748">
              <Data ss:Type="String">Количество  (масса, нетто)</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="m217498060">
              <Data ss:Type="String">Цена,    руб. коп.</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="m217498080">
              <Data ss:Type="String">Сумма без учета НДС, руб. коп.</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m206085708">
              <Data ss:Type="String">НДС</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="2" ss:StyleID="m206085568">
              <Data ss:Type="String">Сумма с учетом НДС, руб. коп.</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="2" ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="m206085588">
              <Data
      ss:Type="String">Наименование, характеристика, сорт, артикул товара</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m206085608">
              <Data ss:Type="String">код</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m206085628">
              <Data ss:Type="String">наименование</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m206085648">
              <Data ss:Type="String">код по ОКЕИ</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:Index="9" ss:MergeDown="1" ss:StyleID="m206085668">
              <Data
      ss:Type="String">в одном месте</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m206085328">
              <Data ss:Type="String">мест,    штук</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:Index="15" ss:MergeDown="1" ss:StyleID="m206085728">
              <Data
      ss:Type="String">ставка, %</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m206085688">
              <Data ss:Type="String">сумма, руб. коп.</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:Index="23">
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">1</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="m206085348">
              <Data ss:Type="Number">2</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">3</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">4</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">5</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">6</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">7</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">8</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">9</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">10</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">11</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s70">
              <Data ss:Type="Number">12</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">13</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">14</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s66">
              <Data ss:Type="Number">15</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>


          <xsl:apply-templates select="set[@name='ShipmentItems']/ShipmentItem" />


          <Row>

            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s83">
              <Data ss:Type="String">Итого</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s80" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">44506.130000000005</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s80" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">8011.1034000000009</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s80" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">52517.233400000005</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">Товарная накладная имеет приложение на___________________________листах</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">и содержит</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s85">
              <Data ss:Type="Number">
                <xsl:value-of select="count(set[@name='ShipmentItems']/ShipmentItem)"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String"> </Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String"> </Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">порядковых записей</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">Приложение (паспорта, сертификаты) на</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String"> </Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">листах</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">
                По доверенности <xsl:value-of select="set[@name='Shipments']/Shipment/@AuthorityLetter"/>
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">Всего отпущено на сумму</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s92" ss:Formula="=R[-4]C[13]">
              <Data ss:Type="Number">52517.233400000005</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">выданной_____________________________________________________</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="6" ss:StyleID="s93">
              <Data ss:Type="String">Отпуск груза разрешил_____________________Холодников Ю.В.</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Груз получил <xsl:value-of select="set[@name='Shipments']/Shipment/Driver/@Name"/></Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">Главный бухгалтер________________________Холодникова В.П.</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">______________________________________________________________</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">
                Отпуск груза произвел________________________&quot;____&quot;___________<xsl:value-of select="rti:GetCurrentYear()"/>г.
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">
                &quot;________&quot;__________________________<xsl:value-of select="rti:GetCurrentYear()"/>г.
              </Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>

            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>

          <Unsynced/>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <Scale>90</Scale>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <ShowPageBreakZoom/>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>

              <ActiveRow>9</ActiveRow>
              <ActiveCol>2</ActiveCol>
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
    <Row ss:AutoFitHeight="0" ss:Height="30">
      <Cell ss:StyleID="s71">
        <Data ss:Type="Number">
          <xsl:number/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:MergeAcross="2" ss:StyleID="m206085368">
        <Data ss:Type="String">
          <xsl:value-of select="@FullDetailName"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell>
        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s75">
        <Data ss:Type="String">
          <xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Name"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s76">
        <Data ss:Type="String">
          <xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Code"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s76">
        <Data ss:Type="String">
          <xsl:value-of select="@PackType"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s76">
        <Data ss:Type="Number">
          <xsl:value-of select="@CountInPlace"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s76">
        <Data ss:Type="Number">
          <xsl:value-of select="@CountOfPlaces"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell>
        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s77">
        <Data ss:Type="Number">
          <xsl:value-of select="@Count"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s78">
        <Data ss:Type="Number">
          <xsl:value-of select="@RealPrice"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s78">
        <Data ss:Type="Number">
          <xsl:value-of select="@Sum"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s79">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsPercent div 100"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s80">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsSum"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s80"><Data ss:Type="Number">
          <xsl:value-of select="@SumWithNds"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/></Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
