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
        <Style ss:ID="s16" ss:Name="Обычный 2">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204"/>
          <Interior/>
          <NumberFormat/>
          <Protection/>
        </Style>
        <Style ss:ID="m17966592" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="m17966612" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17966652" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17966692" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17966712" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17966732" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17966140" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17966240" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17966320" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17965608" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965628" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965648" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965668" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965688" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965708" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965728" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965748" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965056" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965076" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965096" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965116" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965136" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965156" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965176" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965196" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965216" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17965236" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17964544" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17964564" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17964584" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17964604" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17964624" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17964644" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17964664" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17964704" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17964724" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17964032" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17964052" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17964072" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17964112" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17964132" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17964152" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17964172" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17964212" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17964232" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17964252" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17964292" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17964312" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17964332" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17963520" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17963540" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17963560" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17963580" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17963600" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17963640" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17963660" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17963680" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17963700" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17963028" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17963048" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17963068" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17963088" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17963108" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17963128" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17963168" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17963188" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962496" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17962516" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17962536" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17962576" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962596" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962616" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17962636" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962676" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962696" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17962716" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962756" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962776" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962796" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961984" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962004" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962024" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17962044" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17962064" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17962104" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962124" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17962144" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17962164" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961492" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961512" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961532" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961552" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17961572" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17961592" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17961632" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961652" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17960960" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17961020" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17961040" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961060" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17961080" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17961100" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17961140" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961160" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961180" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17961200" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961240" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961260" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17961280" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961320" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961340" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17961360" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17665556" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17665576" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17665616" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17665696" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17665716" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17665064" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17665084" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17665204" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17665224" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17665244" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17664512" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17664692" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17664220" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="m17664240" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="m17664260" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="m17661972" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17662052" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17662132" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17662212" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17661560" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17661720" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17660988" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17661008" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17661028" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17661048" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17661068" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17661188" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17660416" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17660436" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17660456" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17660476" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17660496" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17660516" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17660536" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17660556" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17660576" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17660596" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17659904" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17659924" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17659944" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17659964" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17660004" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17660024" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17660064" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17659392" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17659412" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17659432" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17659452" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17659492" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17659512" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17659552" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17658880" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17658900" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17658920" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17658940" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17658980" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17659000" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17659040" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17658368" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17658388" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17658408" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17658428" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17658468" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17658528" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17658016" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17657364" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17657444" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17657624" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17657644" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17657012" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17656320" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17656340" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17656360" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17656380" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17656400" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17656420" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17656440" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17656460" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17656480" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17656500" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17655808" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17655828" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17655868" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17655888" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17655908" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17655928" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17655948" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17655968" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17655988" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17655296" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17655316" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17655336" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m17655356" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17655376" ss:Parent="s16">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17655396" ss:Parent="s16">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17655416" ss:Parent="s16">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17655456" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17655476" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17654784" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17654804" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17654824" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17654844" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17654864" ss:Parent="s16">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17654884" ss:Parent="s16">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17654904" ss:Parent="s16">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17654944" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17654964" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17654272" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17654292" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m17654312" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m17654332" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="m17654352" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17654372" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17654392" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17654412" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17654432" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17654452" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17653780" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17653800" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17653820" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17653840" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17653860" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17653880" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17653900" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17653920" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m17653940" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216563200" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216563220" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216563280" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216563300" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216563320" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216563340" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216563360" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216563380" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216562688" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216562708" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216562728" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216562748" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216562768" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216562808" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216562848" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216562868" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216562888" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216562908" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216562928" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216562948" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="m216562968" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216562988" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216563008" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216563028" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216563048" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216563068" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216563088" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216563108" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216562176" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216562196" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216562216" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216562236" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216562256" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216562296" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216562316" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216561684" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561704" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561724" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561744" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561764" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561784" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561804" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561824" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216561844" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216561864" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216561884" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216561904" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216561924" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216561944" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216561964" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216561984" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216562004" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216562024" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216562044" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216562064" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216561152" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561172" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561192" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561212" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561232" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561252" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561312" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216561352" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216561372" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216561392" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="7.5"/>
        </Style>
        <Style ss:ID="m216560640" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560660" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560720" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560740" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560760" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="m216560780" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560800" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560820" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560840" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560860" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560880" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560900" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560920" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560940" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560960" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216560980" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561000" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561020" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561060" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561080" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="m216561100" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s18" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s19" ss:Parent="s16">
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s20" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s21" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s23" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s24" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s26" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="6"/>
        </Style>
        <Style ss:ID="s27" ss:Parent="s16">
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="6"/>
        </Style>
        <Style ss:ID="s29" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s30" ss:Parent="s16">
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s32" ss:Parent="s16">
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="9"/>
        </Style>
        <Style ss:ID="s33" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="6"/>
        </Style>
        <Style ss:ID="s36" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s40" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="6"/>
        </Style>
        <Style ss:ID="s41" ss:Parent="s16">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="9"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s43" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s48" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="9"/>
        </Style>
        <Style ss:ID="s53" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s61" ss:Parent="s16">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s73" ss:Parent="s16">
          <Alignment ss:Vertical="Center"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s101" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="9"/>
        </Style>
        <Style ss:ID="s102" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s157" ss:Parent="s16">
          <Alignment ss:Vertical="Center"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="11"/>
        </Style>
        <Style ss:ID="s159" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="6.5"/>
        </Style>
        <Style ss:ID="s161" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="12" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s165" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="11"/>
        </Style>
        <Style ss:ID="s169" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="10.5"/>
        </Style>
        <Style ss:ID="s179" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="5"/>
        </Style>
        <Style ss:ID="s188" ss:Parent="s16">
          <Alignment ss:Vertical="Center"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s189" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s275" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s276" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="6.5"/>
        </Style>
        <Style ss:ID="s278" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="6.5"/>
        </Style>
        <Style ss:ID="s280" ss:Parent="s16">
          <Alignment ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s282" ss:Parent="s16">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s284" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="5"/>
        </Style>
        <Style ss:ID="s286" ss:Parent="s16">
          <Alignment ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s304" ss:Parent="s16">
          <Alignment ss:Vertical="Center"/>
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s323" ss:Parent="s16">
          <Alignment ss:Horizontal="Right" ss:Vertical="Center"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s332" ss:Parent="s16">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s336" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s338" ss:Parent="s16">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s339" ss:Parent="s16">
          <Alignment ss:Vertical="Center"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="5.5"/>
        </Style>
        <Style ss:ID="s343" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s344" ss:Parent="s16">
          <Alignment ss:Vertical="Center"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s349" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="5"/>
        </Style>
        <Style ss:ID="s358" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Double" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="s365" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s369" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s380" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s405" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s432" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s434" ss:Parent="s16">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s442" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
        </Style>
        <Style ss:ID="s463" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="5.5"/>
        </Style>
        <Style ss:ID="s473" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="6.5"/>
        </Style>
        <Style ss:ID="s475" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s476" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="5.5"/>
        </Style>
        <Style ss:ID="s483" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s485" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s489" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s490" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s491" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s493" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="7"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s501" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="5.5"/>
        </Style>
        <Style ss:ID="s506" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s508" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s509" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s510" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="5.5"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s518" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center" ss:Indent="10"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="5.5"/>
        </Style>
        <Style ss:ID="s519" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s524" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="6"/>
        </Style>
        <Style ss:ID="s525" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s526" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s527" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s529" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="9"/>
        </Style>
        <Style ss:ID="s530" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="9"/>
        </Style>
        <Style ss:ID="s531" ss:Parent="s16">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="9"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s534" ss:Parent="s16">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s536" ss:Parent="s16">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s537" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s540" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="6"/>
        </Style>
        <Style ss:ID="s556" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s557" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s579" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s583" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
          <NumberFormat/>
        </Style>
        <Style ss:ID="s599" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="8"/>
        </Style>
        <Style ss:ID="s602" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"/>
        </Style>
        <Style ss:ID="s610" ss:Parent="s16">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="9"/>
        </Style>
        <Style ss:ID="s623" ss:Parent="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="12" ss:Bold="1"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s624" ss:Parent="s16">
          <Alignment ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman" ss:Size="6"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="ТТН лист 1">
        <Table ss:ExpandedColumnCount="187" ss:ExpandedRowCount="46" x:FullColumns="1"
         x:FullRows="1" ss:StyleID="s16" ss:DefaultColumnWidth="3.75">
          <Row ss:AutoFitHeight="0" ss:Height="10.5" ss:StyleID="s18">
            <Cell ss:Index="138" ss:StyleID="s48">
              <Data ss:Type="String">Типовая межотраслевая форма № 1-Т</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="10.5" ss:StyleID="s18">
            <Cell ss:Index="138" ss:StyleID="s48">
              <Data ss:Type="String">Утверждена постановлением Госкомстата России</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="10.5" ss:StyleID="s18">
            <Cell ss:Index="138" ss:StyleID="s48">
              <Data ss:Type="String">от 28.11.97 №78</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:StyleID="s18">
            <Cell ss:Index="4" ss:StyleID="s169"/>
            <Cell ss:Index="169" ss:MergeAcross="18" ss:StyleID="m17966592">
              <Data
      ss:Type="String">Код</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s18">
            <Cell ss:Index="4" ss:StyleID="s165"/>
            <Cell ss:Index="149" ss:StyleID="s73">
              <Data ss:Type="String">Форма по ОКУД</Data>
            </Cell>
            <Cell ss:Index="169" ss:MergeAcross="18" ss:StyleID="m17966612">
              <Data
      ss:Type="String">0345009</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="14.25" ss:StyleID="s18">
            <Cell ss:Index="56" ss:StyleID="s161">
              <Data ss:Type="String">ТОВАРНО-ТРАНСПОРТНАЯ НАКЛАДНАЯ</Data>
            </Cell>
            <Cell ss:Index="122" ss:MergeAcross="41" ss:StyleID="s623"/>
            <Cell ss:Index="165">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:Index="169" ss:MergeAcross="18" ss:StyleID="m17966652">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/@SortOrder"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5" ss:StyleID="s18">
            <Cell ss:Index="129" ss:StyleID="s159"/>
            <Cell ss:Index="137" ss:MergeAcross="7" ss:StyleID="s624">
              <Data
      ss:Type="String">(серия)</Data>
            </Cell>
            <Cell ss:Index="147" ss:StyleID="s157">
              <Data ss:Type="String">Дата составления</Data>
            </Cell>
            <Cell ss:Index="169" ss:MergeAcross="5" ss:StyleID="m17966692">
              <Data ss:Type="String">
                <xsl:value-of select="substring(rti:FormatDateTime(set[@name='Shipments']/Shipment/@Date, 'ddMMyyyy'), 1, 2)"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="m17966712">
              <Data ss:Type="String">
                <xsl:value-of select="substring(rti:FormatDateTime(set[@name='Shipments']/Shipment/@Date, 'ddMMyyyy'), 3, 2)"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="5" ss:StyleID="m17966732">
              <Data ss:Type="String">
                <xsl:value-of select="substring(rti:FormatDateTime(set[@name='Shipments']/Shipment/@Date, 'ddMMyyyy'), 5, 4)"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12" ss:StyleID="s18">
            <Cell>
              <Data ss:Type="String">Грузоотправитель</Data>
            </Cell>
            <Cell ss:Index="22" ss:MergeAcross="134" ss:StyleID="s530">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@FullNameWithBankRequisites"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="11" ss:StyleID="s602">
              <Data ss:Type="String">по ОКПО</Data>
            </Cell>
            <Cell ss:MergeAcross="18" ss:StyleID="m17966240"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5" ss:StyleID="s18">
            <Cell ss:MergeAcross="19" ss:MergeDown="1">
              <Data ss:Type="String">Грузополучатель</Data>
            </Cell>
            <Cell ss:Index="22" ss:MergeAcross="134" ss:StyleID="s524">
              <Data
      ss:Type="String">(полное наименование организации, адрес, номер телефона)</Data>
            </Cell>
            <Cell ss:MergeAcross="11" ss:MergeDown="1" ss:StyleID="s602">
              <Data
      ss:Type="String">по ОКПО</Data>
            </Cell>
            <Cell ss:MergeAcross="18" ss:MergeDown="1" ss:StyleID="m17966320"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25" ss:StyleID="s18">
            <Cell ss:Index="22" ss:MergeAcross="134" ss:StyleID="s610">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Recipient/@FullNameWithBankRequisites"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5" ss:StyleID="s18">
            <Cell ss:MergeAcross="14" ss:MergeDown="1">
              <Data ss:Type="String">Плательщик</Data>
            </Cell>
            <Cell ss:Index="22" ss:MergeAcross="134" ss:StyleID="s524">
              <Data
      ss:Type="String">(полное наименование организации, адрес, номер телефона)</Data>
            </Cell>
            <Cell ss:MergeAcross="11" ss:MergeDown="1" ss:StyleID="s602">
              <Data
      ss:Type="String">по ОКПО</Data>
            </Cell>
            <Cell ss:MergeAcross="18" ss:MergeDown="1" ss:StyleID="m17966140"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25" ss:StyleID="s18">
            <Cell ss:Index="22" ss:MergeAcross="134" ss:StyleID="s610">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@FullNameWithBankRequisites"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5" ss:StyleID="s18">
            <Cell ss:Index="22" ss:MergeAcross="134" ss:StyleID="s524">
              <Data
      ss:Type="String">(полное наименование организации, адрес, банковские реквизиты)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s18">
            <Cell ss:MergeAcross="186" ss:StyleID="s537">
              <Data ss:Type="String">1. ТОВАРНЫЙ РАЗДЕЛ (заполняется грузоотправителем)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="54.75" ss:StyleID="s18">
            <Cell ss:MergeAcross="10" ss:StyleID="s599">
              <Data ss:Type="String">Код&#10;продукции&#10;(номенкла-&#10;турный&#10;номер)</Data>
            </Cell>
            <Cell ss:MergeAcross="19" ss:StyleID="m17965608">
              <Data ss:Type="String">Номер&#10;прейскуранта и до-&#10;полнения к нему</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:StyleID="m17965628">
              <Data ss:Type="String">Артикул или&#10;номер по&#10;прейскуранту</Data>
            </Cell>
            <Cell ss:MergeAcross="11" ss:StyleID="m17965648">
              <Data ss:Type="String">Количество</Data>
            </Cell>
            <Cell ss:MergeAcross="15" ss:StyleID="m17965668">
              <Data ss:Type="String">Цена,&#10;руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="38" ss:StyleID="m17965688">
              <Data ss:Type="String">Наименование&#10;продукции, товара (груза),&#10;ТУ, марка, размер, сорт</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17965708">
              <Data ss:Type="String">Единица измерения</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17965728">
              <Data ss:Type="String">Вид упаковки</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17965748">
              <Data ss:Type="String">Количест- во мест</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m17965056">
              <Data ss:Type="String">Масса,&#10;кг</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17965076">
              <Data ss:Type="String">Сумма,&#10;руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="17" ss:StyleID="m17965096">
              <Data ss:Type="String">Порядковый номер&#10;записи по склад-&#10;ской картотеке&#10;(грузоотправителю,&#10;грузополучателю)</Data>
            </Cell>
          </Row>
          <Row ss:Height="13.5" ss:StyleID="s18">
            <Cell ss:MergeAcross="10" ss:StyleID="m17965116">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:MergeAcross="19" ss:StyleID="m17965136">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:StyleID="m17965156">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:MergeAcross="11" ss:StyleID="m17965176">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:MergeAcross="15" ss:StyleID="m17965196">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:MergeAcross="38" ss:StyleID="m17965216">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17965236">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17964544">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17964564">
              <Data ss:Type="Number">9</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m17964584">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17964604">
              <Data ss:Type="Number">11</Data>
            </Cell>
            <Cell ss:MergeAcross="17" ss:StyleID="m17964624">
              <Data ss:Type="Number">12</Data>
            </Cell>
          </Row>


          <xsl:apply-templates select="set[@name='ShipmentItems']/ShipmentItem" />


          <Row ss:AutoFitHeight="0" ss:Height="14.0625" ss:StyleID="s18">
            <Cell>
              <Data ss:Type="String">Товарная накладная имеет продолжение на</Data>
            </Cell>
            <Cell ss:Index="40" ss:StyleID="s102"/>
            <Cell ss:StyleID="s102"/>
            <Cell ss:StyleID="s102"/>
            <Cell ss:StyleID="s102"/>
            <Cell ss:StyleID="s102"/>
            <Cell ss:StyleID="s101"/>
            <Cell ss:StyleID="s101"/>
            <Cell ss:StyleID="s101"/>
            <Cell ss:StyleID="s101"/>
            <Cell ss:StyleID="s101"/>
            <Cell ss:MergeAcross="23" ss:StyleID="s537"/>
            <Cell ss:Index="75" ss:StyleID="s48">
              <Data ss:Type="String">листах, на бланках за №</Data>
            </Cell>
            <Cell ss:Index="102" ss:MergeAcross="40" ss:StyleID="s525"/>
            <Cell ss:Index="145" ss:MergeAcross="13" ss:StyleID="m17961020">
              <Data
      ss:Type="String">Наценка, %</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17961040"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12" ss:StyleID="s18">
            <Cell>
              <Data ss:Type="String">и содержит</Data>
            </Cell>
            <Cell ss:Index="15" ss:MergeAcross="58" ss:StyleID="s527">
              <Data ss:Type="String">
                <xsl:value-of select="rti:GetRepresentation1(count(set[@name='ShipmentItems']/ShipmentItem))"/>
              </Data>
            </Cell>
            <Cell ss:Index="75">
              <Data ss:Type="String">порядковых номеров записей</Data>
            </Cell>
            <Cell ss:Index="145" ss:MergeAcross="13" ss:MergeDown="2"
             ss:StyleID="m17665556">
              <Data ss:Type="String">Складские или транспортные расходы</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:MergeDown="2" ss:StyleID="m17665576"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5" ss:StyleID="s18">
            <Cell ss:Index="15" ss:MergeAcross="58" ss:StyleID="s524">
              <Data
      ss:Type="String">(прописью)</Data>
            </Cell>
            <Cell ss:Index="123" ss:MergeAcross="15" ss:MergeDown="1"
             ss:StyleID="m17665616">
              <Data ss:Type="Number">
                <xsl:value-of select="sum(set[@name='ShipmentItems']/ShipmentItem/@NetMass)"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="10.5" ss:StyleID="s18">
            <Cell>
              <Data ss:Type="String">Всего наименований</Data>
            </Cell>
            <Cell ss:Index="25" ss:MergeAcross="48" ss:StyleID="s527">
              <Data ss:Type="String">
                <xsl:value-of select="rti:GetRepresentation1(count(set[@name='ShipmentItems']/ShipmentItem))"/>
              </Data>
            </Cell>
            <Cell ss:Index="75">
              <Data ss:Type="String">Масса груза (нетто)</Data>
            </Cell>
            <Cell ss:Index="98" ss:MergeAcross="22" ss:StyleID="s527">
              <Data ss:Type="String">
              </Data>
            </Cell>
            <Cell ss:Index="139" ss:MergeAcross="2" ss:StyleID="s557">
              <Data ss:Type="String">кг</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5" ss:StyleID="s18">
            <Cell ss:Index="25" ss:MergeAcross="48" ss:StyleID="s524">
              <Data
      ss:Type="String">(прописью)</Data>
            </Cell>
            <Cell ss:Index="98" ss:MergeAcross="22" ss:StyleID="s524">
              <Data
      ss:Type="String">(прописью)</Data>
            </Cell>
            <Cell ss:Index="123" ss:MergeAcross="15" ss:MergeDown="1"
             ss:StyleID="m17665204"/>
            <Cell ss:Index="145" ss:MergeAcross="13" ss:MergeDown="1"
             ss:StyleID="m17665224"/>
            <Cell ss:MergeAcross="10" ss:MergeDown="1" ss:StyleID="m17665244"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.0625" ss:StyleID="s18">
            <Cell ss:StyleID="s73">
              <Data ss:Type="String">Всего мест</Data>
            </Cell>
            <Cell ss:Index="15" ss:MergeAcross="58" ss:StyleID="s556">
              <Data ss:Type="String">
                <xsl:value-of select="rti:GetRepresentation1(sum(set[@name='ShipmentItems']/ShipmentItem/@CountOfPlaces))"/>
              </Data>
            </Cell>
            <Cell ss:Index="75" ss:StyleID="s73">
              <Data ss:Type="String">Масса груза (нетто)</Data>
            </Cell>
            <Cell ss:Index="98" ss:MergeAcross="22" ss:StyleID="s556"/>
            <Cell ss:Index="139" ss:MergeAcross="2" ss:StyleID="s557">
              <Data
      ss:Type="String">кг</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="14.0625" ss:StyleID="s18">
            <Cell ss:Index="15" ss:MergeAcross="58" ss:StyleID="s540">
              <Data
      ss:Type="String">(прописью)</Data>
            </Cell>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:StyleID="s61"/>
            <Cell ss:MergeAcross="22" ss:StyleID="s540">
              <Data ss:Type="String">(прописью)</Data>
            </Cell>
            <Cell ss:Index="145" ss:MergeAcross="13" ss:StyleID="m17665064">
              <Data
      ss:Type="String">Всего к оплате</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17665084"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12" ss:StyleID="s18">
            <Cell ss:StyleID="s48">
              <Data ss:Type="String">Приложение (паспорта, сертификаты и т.п.) на</Data>
            </Cell>
            <Cell ss:Index="48" ss:MergeAcross="25" ss:StyleID="s534"/>
            <Cell ss:Index="75">
              <Data ss:Type="String">листах</Data>
            </Cell>
            <Cell ss:Index="84" ss:MergeAcross="15" ss:StyleID="s537"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s20"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.0625" ss:StyleID="s18">
            <Cell ss:Index="48" ss:MergeAcross="25" ss:StyleID="s524">
              <Data
      ss:Type="String">(прописью)</Data>
            </Cell>
            <Cell ss:Index="84" ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:StyleID="s53"/>
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:MergeAcross="22" ss:MergeDown="1">
              <Data ss:Type="String">По доверенности №</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:MergeDown="1" ss:StyleID="s24"/>
            <Cell ss:StyleID="s24"/>
            <Cell ss:MergeAcross="4" ss:MergeDown="1" ss:StyleID="s24">
              <Data
      ss:Type="String">от «</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:MergeDown="1" ss:StyleID="m17664692"/>
            <Cell ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="s24">
              <Data
      ss:Type="String">»</Data>
            </Cell>
            <Cell ss:MergeAcross="18" ss:MergeDown="1" ss:StyleID="s24"/>
            <Cell ss:StyleID="s23"/>
            <Cell ss:StyleID="s23"/>
            <Cell ss:MergeAcross="6" ss:MergeDown="1" ss:StyleID="m17664512"/>
            <Cell ss:MergeAcross="5" ss:MergeDown="1" ss:StyleID="s536">
              <Data
      ss:Type="String">года</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25" ss:StyleID="s18">
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:Index="140" ss:StyleID="s24"/>
            <Cell ss:Index="173" ss:StyleID="s23"/>
            <Cell ss:StyleID="s23"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12" ss:StyleID="s18">
            <Cell ss:StyleID="s48">
              <Data ss:Type="String">Всего на сумму</Data>
            </Cell>
            <Cell ss:Index="19" ss:MergeAcross="54" ss:StyleID="s537">
              <Data ss:Type="String">
                <xsl:value-of select="rti:GetRepresentation1(sum(set[@name='ShipmentItems']/ShipmentItem/@SumWithNds))"/>
              </Data>
            </Cell>
            <Cell ss:Index="75">
              <Data ss:Type="String">руб.</Data>
            </Cell>
            <Cell ss:Index="79" ss:StyleID="s43"/>
            <Cell ss:StyleID="s43"/>
            <Cell ss:MergeAcross="8" ss:StyleID="s537">
              <Data ss:Type="String">
                <xsl:value-of select="rti:GetCents(sum(set[@name='ShipmentItems']/ShipmentItem/@SumWithNds))"/>
              </Data>
            </Cell>
            <Cell ss:Index="91" ss:StyleID="s19">
              <Data ss:Type="String">коп.</Data>
            </Cell>
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell>
              <Data ss:Type="String">выданной</Data>
            </Cell>
            <Cell ss:Index="115" ss:MergeAcross="72" ss:StyleID="s527"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5" ss:StyleID="s18">
            <Cell ss:Index="19" ss:MergeAcross="38" ss:StyleID="s524">
              <Data
      ss:Type="String">(прописью)</Data>
            </Cell>
            <Cell ss:MergeAcross="22" ss:MergeDown="1" ss:StyleID="s531">
              <Data
      ss:Type="String">Главный (старший)</Data>
            </Cell>
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:MergeAcross="28" ss:MergeDown="1">
              <Data ss:Type="String">Груз к перевозке принял</Data>
            </Cell>
            <Cell ss:MergeAcross="11" ss:MergeDown="1" ss:StyleID="m17664220"/>
            <Cell ss:Index="145" ss:MergeAcross="11" ss:MergeDown="1"
             ss:StyleID="m17664240"/>
            <Cell ss:Index="158" ss:MergeAcross="29" ss:MergeDown="1"
             ss:StyleID="m17664260"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5" ss:StyleID="s18">
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:Index="144" ss:StyleID="s43"/>
            <Cell ss:Index="157" ss:StyleID="s43"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25" ss:StyleID="s18">
            <Cell ss:Index="58" ss:MergeAcross="10" ss:MergeDown="1" ss:StyleID="s41">
              <Data
      ss:Type="String">бухгалтер</Data>
            </Cell>
            <Cell ss:StyleID="s41"/>
            <Cell ss:StyleID="s41"/>
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:Index="132" ss:MergeAcross="11" ss:StyleID="s524">
              <Data
      ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s40"/>
            <Cell ss:MergeAcross="11" ss:StyleID="s524">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s40"/>
            <Cell ss:MergeAcross="29" ss:StyleID="s524">
              <Data ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="10.5" ss:StyleID="s18">
            <Cell ss:StyleID="s36">
              <Data ss:Type="String">Отпуск разрешил</Data>
            </Cell>
            <Cell ss:Index="20" ss:MergeAcross="9" ss:StyleID="s475"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s475"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:MergeAcross="17" ss:StyleID="s475"/>
            <Cell ss:Index="69" ss:MergeAcross="9" ss:StyleID="s529"/>
            <Cell ss:Index="81" ss:MergeAcross="18" ss:StyleID="s530"/>
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.0625" ss:StyleID="s18">
            <Cell ss:Index="20" ss:MergeAcross="9" ss:StyleID="s524">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s26"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s524">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s26"/>
            <Cell ss:MergeAcross="17" ss:StyleID="s524">
              <Data ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:MergeAcross="9" ss:StyleID="s524">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s33"/>
            <Cell ss:StyleID="s33"/>
            <Cell ss:MergeAcross="18" ss:StyleID="s524">
              <Data ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12" ss:StyleID="s18">
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">(При личном приеме товара по количеству и ассортименту)</Data>
            </Cell>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.4375" ss:StyleID="s18">
            <Cell ss:StyleID="s36">
              <Data ss:Type="String">Отпуск груза произвел</Data>
            </Cell>
            <Cell ss:Index="23" ss:MergeAcross="15" ss:StyleID="s475"/>
            <Cell ss:Index="41" ss:MergeAcross="13" ss:StyleID="s475"/>
            <Cell ss:Index="57" ss:MergeAcross="25" ss:StyleID="s475"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:Index="102" ss:MergeAcross="83" ss:StyleID="s526"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.0625" ss:StyleID="s18">
            <Cell ss:Index="23" ss:MergeAcross="15" ss:StyleID="s524">
              <Data
      ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s33"/>
            <Cell ss:StyleID="s33"/>
            <Cell ss:MergeAcross="13" ss:StyleID="s524">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s33"/>
            <Cell ss:StyleID="s33"/>
            <Cell ss:MergeAcross="25" ss:StyleID="s524">
              <Data ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12" ss:StyleID="s18">
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:StyleID="s32">
              <Data ss:Type="String">Груз получил грузополучатель</Data>
            </Cell>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:MergeAcross="8" ss:StyleID="s475"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:MergeAcross="10" ss:StyleID="s380"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:StyleID="s29"/>
            <Cell ss:MergeAcross="27" ss:StyleID="s380"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5" ss:StyleID="s18">
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:MergeAcross="8" ss:StyleID="s524">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s27"/>
            <Cell ss:StyleID="s27"/>
            <Cell ss:MergeAcross="10" ss:StyleID="s524">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:MergeAcross="27" ss:StyleID="s524">
              <Data ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.25" ss:StyleID="s18">
            <Cell ss:Index="45">
              <Data ss:Type="String">М.П.</Data>
            </Cell>
            <Cell ss:Index="55">
              <Data ss:Type="String">«</Data>
            </Cell>
            <Cell ss:Index="57" ss:MergeAcross="4" ss:StyleID="s525"/>
            <Cell ss:StyleID="s24">
              <Data ss:Type="String">»</Data>
            </Cell>
            <Cell ss:StyleID="s24"/>
            <Cell ss:StyleID="s24"/>
            <Cell ss:MergeAcross="17" ss:StyleID="s525"/>
            <Cell ss:StyleID="s23"/>
            <Cell ss:StyleID="s23"/>
            <Cell ss:MergeAcross="9" ss:StyleID="s525"/>
            <Cell ss:StyleID="s21"/>
            <Cell>
              <Data ss:Type="String">года</Data>
            </Cell>
            <Cell ss:Index="102" ss:StyleID="s20"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
            <Cell ss:StyleID="s19"/>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.31496062992125984"/>
            <Footer x:Margin="0.31496062992125984"/>
            <PageMargins x:Bottom="0" x:Left="0.11811023622047245" x:Right="0"
             x:Top="0.15748031496062992"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <VerticalResolution>0</VerticalResolution>
          </Print>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>20</ActiveRow>
              <ActiveCol>56</ActiveCol>
              <RangeSelection>R21C57:R21C72</RangeSelection>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
      <Worksheet ss:Name="ТТН лист 2">
        <Table ss:ExpandedColumnCount="190" ss:ExpandedRowCount="61" x:FullColumns="1"
         x:FullRows="1" ss:StyleID="s16" ss:DefaultColumnWidth="3.75">
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:Index="190" ss:StyleID="s338">
              <Data ss:Type="String">Оборотная сторона формы № 1-Т</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="11.0625" ss:StyleID="s29">
            <Cell ss:Index="76" ss:StyleID="s48">
              <Data ss:Type="String">2. ТРАНСПОРТНЫЙ РАЗДЕЛ</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s29">
            <Cell ss:StyleID="s188">
              <Data ss:Type="String">Регистрационный №</Data>
            </Cell>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:MergeAcross="25" ss:StyleID="s509"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344">
              <Data ss:Type="String">Серия</Data>
            </Cell>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:MergeAcross="18" ss:StyleID="s509"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:StyleID="s344"/>
            <Cell ss:MergeAcross="22" ss:StyleID="s509"/>
            <Cell ss:Index="170" ss:StyleID="s338">
              <Data ss:Type="String">ТТН №</Data>
            </Cell>
            <Cell ss:Index="172" ss:MergeAcross="18" ss:StyleID="m17662132"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s29">
            <Cell>
              <Data ss:Type="String">Срок доставки груза</Data>
            </Cell>
            <Cell ss:Index="22">
              <Data ss:Type="String">«</Data>
            </Cell>
            <Cell ss:Index="24" ss:MergeAcross="3" ss:StyleID="s432"/>
            <Cell>
              <Data ss:Type="String">»</Data>
            </Cell>
            <Cell ss:Index="30" ss:MergeAcross="16" ss:StyleID="s369"/>
            <Cell ss:StyleID="s343"/>
            <Cell ss:StyleID="s343"/>
            <Cell ss:MergeAcross="6" ss:StyleID="s475"/>
            <Cell>
              <Data ss:Type="String"> года</Data>
            </Cell>
            <Cell ss:Index="170" ss:StyleID="s323">
              <Data ss:Type="String">К путевому</Data>
            </Cell>
            <Cell ss:Index="172" ss:MergeAcross="18" ss:MergeDown="1"
             ss:StyleID="m17662212"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s29">
            <Cell ss:StyleID="s188">
              <Data ss:Type="String">Организация</Data>
            </Cell>
            <Cell ss:Index="14" ss:MergeAcross="139" ss:StyleID="s405"/>
            <Cell ss:Index="170" ss:StyleID="s338">
              <Data ss:Type="String">листу №</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6.9375" ss:StyleID="s29">
            <Cell ss:Index="14" ss:MergeAcross="139" ss:StyleID="s518">
              <Data
      ss:Type="String">(наименование, адрес, номер телефона, банковские реквизиты)</Data>
            </Cell>
            <Cell ss:Index="172" ss:MergeAcross="18" ss:MergeDown="3"
             ss:StyleID="m17661972"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s29">
            <Cell>
              <Data ss:Type="String">Автомобиль</Data>
            </Cell>
            <Cell ss:Index="14" ss:MergeAcross="39" ss:StyleID="s519"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:Index="80">
              <Data ss:Type="String">Государственный номерной знак</Data>
            </Cell>
            <Cell ss:Index="113" ss:MergeAcross="40" ss:StyleID="s506"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6.5625" ss:StyleID="s29">
            <Cell ss:Index="14" ss:MergeAcross="39" ss:StyleID="s501">
              <Data
      ss:Type="String">(марка)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s29">
            <Cell>
              <Data ss:Type="String">Заказчик (плательщик)</Data>
            </Cell>
            <Cell ss:Index="24" ss:MergeAcross="147" ss:StyleID="m17662052"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6.9375" ss:StyleID="s29">
            <Cell ss:Index="45" ss:StyleID="s339">
              <Data ss:Type="String">(наименование, адрес, номер телефона, банковские реквизиты)</Data>
            </Cell>
            <Cell ss:Index="172" ss:MergeAcross="18" ss:MergeDown="3"
             ss:StyleID="m17661560"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s29">
            <Cell ss:StyleID="s36">
              <Data ss:Type="String">Водитель</Data>
            </Cell>
            <Cell ss:Index="12" ss:MergeAcross="88" ss:StyleID="s405"/>
            <Cell ss:Index="105" ss:StyleID="s36">
              <Data ss:Type="String">Удостоверение №</Data>
            </Cell>
            <Cell ss:Index="125" ss:MergeAcross="42" ss:StyleID="s506"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6.5625" ss:StyleID="s29">
            <Cell ss:Index="12" ss:MergeAcross="88" ss:StyleID="s501">
              <Data
      ss:Type="String">(фамилия, имя, отчество)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.9375" ss:StyleID="s29">
            <Cell ss:MergeAcross="22" ss:MergeDown="1" ss:StyleID="s282">
              <Data
      ss:Type="String">Лицензионная карточка</Data>
            </Cell>
            <Cell ss:Index="25" ss:MergeAcross="53" ss:StyleID="s475">
              <Data
      ss:Type="String">стандартная, ограниченная</Data>
            </Cell>
            <Cell ss:StyleID="s30"/>
            <Cell ss:Index="95">
              <Data ss:Type="String">Вид перевозки</Data>
            </Cell>
            <Cell ss:Index="110" ss:MergeAcross="49" ss:StyleID="s405"/>
            <Cell ss:Index="170" ss:StyleID="s338">
              <Data ss:Type="String">Код</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6.75" ss:StyleID="s29">
            <Cell ss:Index="25" ss:MergeAcross="53" ss:StyleID="s501">
              <Data
      ss:Type="String">(ненужное зачеркнуть)</Data>
            </Cell>
            <Cell ss:Index="172" ss:MergeAcross="18" ss:MergeDown="2"
             ss:StyleID="m17661720"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.9375" ss:StyleID="s29">
            <Cell>
              <Data ss:Type="String">Регистрационный №</Data>
            </Cell>
            <Cell ss:Index="21" ss:MergeAcross="38" ss:StyleID="s506"/>
            <Cell ss:Index="62">
              <Data ss:Type="String">Серия</Data>
            </Cell>
            <Cell ss:Index="73" ss:MergeAcross="20" ss:StyleID="s506"/>
            <Cell ss:StyleID="s336"/>
            <Cell ss:StyleID="s336">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:StyleID="s336"/>
            <Cell ss:StyleID="s336"/>
            <Cell ss:StyleID="s336"/>
            <Cell ss:StyleID="s336"/>
            <Cell ss:MergeAcross="28" ss:StyleID="s506"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s29">
            <Cell>
              <Data ss:Type="String">Пункт погрузки</Data>
            </Cell>
            <Cell ss:Index="17" ss:MergeAcross="55" ss:StyleID="s475"/>
            <Cell ss:Index="82">
              <Data ss:Type="String">Пункт разгрузки</Data>
            </Cell>
            <Cell ss:Index="98" ss:MergeAcross="59" ss:StyleID="s475"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:Index="160" ss:StyleID="s30"/>
            <Cell ss:Index="163" ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:Index="170" ss:StyleID="s332">
              <Data ss:Type="String">Маршрут</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6.5625" ss:StyleID="s29">
            <Cell ss:Index="17" ss:MergeAcross="55" ss:StyleID="s501">
              <Data
      ss:Type="String">(адрес, номер телефона)</Data>
            </Cell>
            <Cell ss:Index="98" ss:MergeAcross="59" ss:StyleID="s501">
              <Data
      ss:Type="String">(адрес, номер телефона)</Data>
            </Cell>
            <Cell ss:Index="172" ss:MergeAcross="18" ss:MergeDown="1"
             ss:StyleID="m17661068"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s29">
            <Cell ss:StyleID="s188">
              <Data ss:Type="String">Переадресовка</Data>
            </Cell>
            <Cell ss:Index="17" ss:MergeAcross="50" ss:StyleID="s508"/>
            <Cell ss:Index="70" ss:StyleID="s188">
              <Data ss:Type="String">1.Прицеп</Data>
            </Cell>
            <Cell ss:Index="81" ss:MergeAcross="15" ss:StyleID="s509"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188">
              <Data ss:Type="String">Государственный номерной знак</Data>
            </Cell>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:MergeAcross="22" ss:StyleID="s509"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s323">
              <Data ss:Type="String">Гаражный номер</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6.5625" ss:StyleID="s29">
            <Cell ss:Index="17" ss:MergeAcross="50" ss:StyleID="s501">
              <Data
      ss:Type="String">(наименование и адрес нового грузополучателя, номер распоряжения)</Data>
            </Cell>
            <Cell ss:Index="81" ss:MergeAcross="15" ss:StyleID="s510">
              <Data
      ss:Type="String">(марка)</Data>
            </Cell>
            <Cell ss:Index="172" ss:MergeAcross="18" ss:MergeDown="1"
             ss:StyleID="m17661188"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s29">
            <Cell ss:Index="13" ss:MergeAcross="31" ss:StyleID="s508"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188">
              <Data ss:Type="String">2.Прицеп</Data>
            </Cell>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:MergeAcross="15" ss:StyleID="s509"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188">
              <Data ss:Type="String">Государственный номерной знак</Data>
            </Cell>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:MergeAcross="22" ss:StyleID="s509"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s323">
              <Data ss:Type="String">Гаражный номер</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6" ss:StyleID="s29">
            <Cell ss:Index="13" ss:MergeAcross="31" ss:StyleID="s501">
              <Data
      ss:Type="String">(подпись ответственного лица)</Data>
            </Cell>
            <Cell ss:Index="81" ss:MergeAcross="15" ss:StyleID="s501">
              <Data
      ss:Type="String">(марка)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6" ss:StyleID="s29">
            <Cell ss:Index="68" ss:MergeAcross="31" ss:MergeDown="1">
              <Data ss:Type="String">С В Е Д Е Н И Я   О   Г Р У З Е</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="5.25" ss:StyleID="s29"/>
          <Row ss:AutoFitHeight="0" ss:Height="18.75" ss:StyleID="s29">
            <Cell ss:MergeAcross="33" ss:StyleID="m17660988">
              <Data ss:Type="String">Краткое описание груза</Data>
            </Cell>
            <Cell ss:MergeAcross="37" ss:StyleID="m17661008">
              <Data ss:Type="String">С грузом следуют документы</Data>
            </Cell>
            <Cell ss:MergeAcross="17" ss:StyleID="m17661028">
              <Data ss:Type="String">Вид упаковки</Data>
            </Cell>
            <Cell ss:MergeAcross="15" ss:StyleID="m17661048">
              <Data ss:Type="String">Количество мест</Data>
            </Cell>
            <Cell ss:MergeAcross="32" ss:StyleID="m17660416">
              <Data ss:Type="String">Способ определения массы</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17660436">
              <Data ss:Type="String">Код груза</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:StyleID="m17660456">
              <Data ss:Type="String">Номер кон- тейнера</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:StyleID="m17660476">
              <Data ss:Type="String">Класс груза</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m17660496">
              <Data ss:Type="String">Масса брутто,&#10;кг</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s29">
            <Cell ss:MergeAcross="33" ss:StyleID="m17660516">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:MergeAcross="37" ss:StyleID="m17660536">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:MergeAcross="17" ss:StyleID="m17660556">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:MergeAcross="15" ss:StyleID="m17660576">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:MergeAcross="32" ss:StyleID="m17660596">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m17659904">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:StyleID="m17659924">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:StyleID="m17659944">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m17659964">
              <Data ss:Type="Number">9</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:MergeAcross="2" ss:StyleID="s491">
              <Data ss:Type="String">1.</Data>
            </Cell>
            <Cell ss:MergeAcross="30" ss:StyleID="m17660004"/>
            <Cell ss:MergeAcross="37" ss:StyleID="m17660024"/>
            <Cell ss:MergeAcross="17" ss:StyleID="s490"/>
            <Cell ss:MergeAcross="15" ss:StyleID="m17660064"/>
            <Cell ss:MergeAcross="32" ss:StyleID="s493"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m17659392"/>
            <Cell ss:MergeAcross="12" ss:StyleID="m17659412"/>
            <Cell ss:MergeAcross="12" ss:StyleID="m17659432"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m17659452"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:MergeAcross="2" ss:StyleID="s491">
              <Data ss:Type="String">2.</Data>
            </Cell>
            <Cell ss:MergeAcross="30" ss:StyleID="m17659492"/>
            <Cell ss:MergeAcross="37" ss:StyleID="m17659512"/>
            <Cell ss:MergeAcross="17" ss:StyleID="s490"/>
            <Cell ss:MergeAcross="15" ss:StyleID="m17659552"/>
            <Cell ss:MergeAcross="32" ss:StyleID="s493"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m17658880"/>
            <Cell ss:MergeAcross="12" ss:StyleID="m17658900"/>
            <Cell ss:MergeAcross="12" ss:StyleID="m17658920"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m17658940"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:MergeAcross="2" ss:StyleID="s491">
              <Data ss:Type="String">3.</Data>
            </Cell>
            <Cell ss:MergeAcross="30" ss:StyleID="m17658980"/>
            <Cell ss:MergeAcross="37" ss:StyleID="m17659000"/>
            <Cell ss:MergeAcross="17" ss:StyleID="s490"/>
            <Cell ss:MergeAcross="15" ss:StyleID="m17659040"/>
            <Cell ss:MergeAcross="32" ss:StyleID="s493"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m17658368"/>
            <Cell ss:MergeAcross="12" ss:StyleID="m17658388"/>
            <Cell ss:MergeAcross="12" ss:StyleID="m17658408"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m17658428"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.9375" ss:StyleID="s29">
            <Cell ss:StyleID="s188">
              <Data ss:Type="String">Указанный груз с исправной</Data>
            </Cell>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:MergeAcross="17" ss:StyleID="s483"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188">
              <Data ss:Type="String">Кол-во</Data>
            </Cell>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:MergeAcross="12" ss:StyleID="m17658468"/>
            <Cell ss:StyleID="s286">
              <Data ss:Type="String">Указанный груз с исправной</Data>
            </Cell>
            <Cell ss:StyleID="s304"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:MergeAcross="8" ss:StyleID="s485"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188">
              <Data ss:Type="String">Кол-во</Data>
            </Cell>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:MergeAcross="9" ss:StyleID="s365"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188">
              <Data ss:Type="String">Количество</Data>
            </Cell>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m17658528"/>
            <Cell ss:MergeAcross="25" ss:StyleID="s489">
              <Data ss:Type="String">Итого: масса брутто, кг</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m17658016"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.9375" ss:StyleID="s29">
            <Cell>
              <Data ss:Type="String">пломбой, тарой и упаковкой</Data>
            </Cell>
            <Cell ss:Index="28" ss:MergeAcross="17" ss:StyleID="s463">
              <Data
      ss:Type="String">(оттиск)</Data>
            </Cell>
            <Cell ss:Index="47" ss:MergeAcross="6" ss:StyleID="s343">
              <Data ss:Type="String">мест</Data>
            </Cell>
            <Cell ss:Index="55" ss:MergeAcross="12" ss:StyleID="s463">
              <Data
      ss:Type="String">(прописью)</Data>
            </Cell>
            <Cell ss:StyleID="s275">
              <Data ss:Type="String">пломбой, тарой и упаковкой</Data>
            </Cell>
            <Cell ss:Index="97" ss:MergeAcross="8" ss:StyleID="s463">
              <Data ss:Type="String">(оттиск)</Data>
            </Cell>
            <Cell ss:Index="107" ss:MergeAcross="6" ss:StyleID="s343">
              <Data
      ss:Type="String">мест</Data>
            </Cell>
            <Cell ss:Index="115" ss:MergeAcross="9" ss:StyleID="s463">
              <Data
      ss:Type="String">(прописью)</Data>
            </Cell>
            <Cell ss:Index="126">
              <Data ss:Type="String">ездок, заездов</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.9375" ss:StyleID="s29">
            <Cell>
              <Data ss:Type="String">Массой брутто</Data>
            </Cell>
            <Cell ss:Index="17" ss:MergeAcross="28" ss:StyleID="s475"/>
            <Cell>
              <Data ss:Type="String">т</Data>
            </Cell>
            <Cell ss:Index="54">
              <Data ss:Type="String">к перевозке</Data>
            </Cell>
            <Cell ss:Index="68" ss:StyleID="s275">
              <Data ss:Type="String">Массой брутто</Data>
            </Cell>
            <Cell ss:Index="84" ss:MergeAcross="22" ss:StyleID="s380"/>
            <Cell>
              <Data ss:Type="String">т</Data>
            </Cell>
            <Cell ss:Index="132" ss:StyleID="s275">
              <Data ss:Type="String"> Отметки о составленных актах</Data>
            </Cell>
            <Cell ss:Index="161" ss:MergeAcross="29" ss:StyleID="s405"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6" ss:StyleID="s29">
            <Cell ss:Index="17" ss:MergeAcross="28" ss:StyleID="s476">
              <Data
      ss:Type="String">(прописью)</Data>
            </Cell>
            <Cell ss:Index="68" ss:StyleID="s275"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:MergeAcross="22" ss:StyleID="s476">
              <Data ss:Type="String">(прописью)</Data>
            </Cell>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:Index="132" ss:StyleID="s275"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.9375" ss:StyleID="s29">
            <Cell>
              <Data ss:Type="String">Сдал</Data>
            </Cell>
            <Cell ss:Index="9" ss:MergeAcross="9" ss:StyleID="s405"/>
            <Cell ss:Index="21" ss:MergeAcross="10" ss:StyleID="s405"/>
            <Cell ss:Index="34" ss:MergeAcross="16" ss:StyleID="s405"/>
            <Cell ss:Index="68" ss:StyleID="s275">
              <Data ss:Type="String">Сдал водитель-</Data>
            </Cell>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:Index="132" ss:StyleID="s275"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6" ss:StyleID="s29">
            <Cell ss:Index="9" ss:MergeAcross="9" ss:MergeDown="1" ss:StyleID="s463">
              <Data
      ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s179"/>
            <Cell ss:StyleID="s179"/>
            <Cell ss:MergeAcross="10" ss:MergeDown="1" ss:StyleID="s463">
              <Data
      ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s179"/>
            <Cell ss:StyleID="s179"/>
            <Cell ss:MergeAcross="16" ss:MergeDown="1" ss:StyleID="s463">
              <Data
      ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
            <Cell ss:Index="68" ss:MergeAcross="11" ss:MergeDown="1" ss:StyleID="s275">
              <Data
      ss:Type="String">экспедитор</Data>
            </Cell>
            <Cell ss:StyleID="s30"/>
            <Cell ss:MergeAcross="14" ss:MergeDown="1" ss:StyleID="m17657624"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:MergeAcross="22" ss:MergeDown="1" ss:StyleID="m17657644"/>
            <Cell ss:Index="132" ss:MergeAcross="20" ss:MergeDown="1" ss:StyleID="s286">
              <Data
      ss:Type="String"> Транспортные услуги</Data>
            </Cell>
            <Cell ss:StyleID="s30"/>
            <Cell ss:MergeAcross="36" ss:MergeDown="1" ss:StyleID="m17657364"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="3" ss:StyleID="s29">
            <Cell ss:Index="19" ss:StyleID="s282"/>
            <Cell ss:StyleID="s282"/>
            <Cell ss:Index="32" ss:StyleID="s282"/>
            <Cell ss:StyleID="s282"/>
            <Cell ss:Index="80" ss:StyleID="s30"/>
            <Cell ss:Index="96" ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:Index="153" ss:StyleID="s30"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="5.0625" ss:StyleID="s29">
            <Cell ss:MergeAcross="18" ss:MergeDown="1">
              <Data ss:Type="String">Принял водитель -</Data>
            </Cell>
            <Cell ss:Index="68" ss:StyleID="s275"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:MergeAcross="14" ss:MergeDown="1" ss:StyleID="s463">
              <Data
      ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s284"/>
            <Cell ss:StyleID="s284"/>
            <Cell ss:MergeAcross="22" ss:MergeDown="1" ss:StyleID="s463">
              <Data
      ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
            <Cell ss:Index="132" ss:StyleID="s275"/>
            <Cell ss:MergeAcross="57" ss:MergeDown="1" ss:StyleID="m17657444"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="4.5" ss:StyleID="s29">
            <Cell ss:Index="55" ss:MergeAcross="8" ss:MergeDown="3" ss:StyleID="s473">
              <Data
      ss:Type="String">место для штампа</Data>
            </Cell>
            <Cell ss:Index="68" ss:StyleID="s275"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:Index="96" ss:StyleID="s280"/>
            <Cell ss:StyleID="s280"/>
            <Cell ss:Index="122" ss:MergeAcross="8" ss:MergeDown="3" ss:StyleID="s473">
              <Data
      ss:Type="String">место для штампа</Data>
            </Cell>
            <Cell ss:Index="132" ss:StyleID="s275"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell>
              <Data ss:Type="String">экспедитор</Data>
            </Cell>
            <Cell ss:Index="14" ss:MergeAcross="10" ss:StyleID="s405"/>
            <Cell ss:Index="27" ss:MergeAcross="21" ss:StyleID="s405"/>
            <Cell ss:Index="68" ss:StyleID="s286">
              <Data ss:Type="String">Принял</Data>
            </Cell>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:MergeAcross="12" ss:StyleID="s405"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:MergeAcross="11" ss:StyleID="s405"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:MergeAcross="16" ss:StyleID="s405"/>
            <Cell ss:StyleID="s278"/>
            <Cell ss:Index="131" ss:StyleID="s276"/>
            <Cell ss:StyleID="s275"/>
            <Cell ss:MergeAcross="57" ss:StyleID="s369"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="5.4375" ss:StyleID="s29">
            <Cell ss:Index="14" ss:MergeAcross="10" ss:MergeDown="1" ss:StyleID="s463">
              <Data
      ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s179"/>
            <Cell ss:StyleID="s179"/>
            <Cell ss:MergeAcross="21" ss:MergeDown="1" ss:StyleID="s463">
              <Data
      ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
            <Cell ss:Index="68" ss:StyleID="s275"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:MergeAcross="12" ss:MergeDown="1" ss:StyleID="s349">
              <Data
      ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s284"/>
            <Cell ss:MergeAcross="11" ss:MergeDown="1" ss:StyleID="s349">
              <Data
      ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s284"/>
            <Cell ss:MergeAcross="16" ss:MergeDown="1" ss:StyleID="s349">
              <Data
      ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
            <Cell ss:StyleID="s278"/>
            <Cell ss:Index="131" ss:StyleID="s276"/>
            <Cell ss:StyleID="s275"/>
            <Cell ss:MergeAcross="57" ss:MergeDown="1" ss:StyleID="m17657012"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="3" ss:StyleID="s29">
            <Cell ss:Index="25" ss:StyleID="s282"/>
            <Cell ss:StyleID="s282"/>
            <Cell ss:Index="67" ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:Index="90" ss:StyleID="s280"/>
            <Cell ss:Index="103" ss:StyleID="s280"/>
            <Cell ss:Index="121" ss:StyleID="s278"/>
            <Cell ss:Index="131" ss:StyleID="s276"/>
            <Cell ss:StyleID="s275"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="3" ss:StyleID="s29">
            <Cell ss:Index="68" ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:Index="132" ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
            <Cell ss:StyleID="s30"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.9375" ss:StyleID="s29">
            <Cell ss:MergeAcross="189" ss:StyleID="m17656320">
              <Data ss:Type="String">П О Г Р У З О Ч Н О  -  Р А З Г Р У З О Ч Н Ы Е   О П Е Р А Ц И И</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18.75" ss:StyleID="s29">
            <Cell ss:MergeAcross="9" ss:MergeDown="1" ss:StyleID="m17656340">
              <Data
      ss:Type="String">операция</Data>
            </Cell>
            <Cell ss:MergeAcross="25" ss:MergeDown="1" ss:StyleID="m17656360">
              <Data
      ss:Type="String">исполнитель (автовладелец,&#10;получатель, отправитель)</Data>
            </Cell>
            <Cell ss:MergeAcross="25" ss:MergeDown="1" ss:StyleID="m17656380">
              <Data
      ss:Type="String">дополнительные операции&#10;(наименование, количество)</Data>
            </Cell>
            <Cell ss:MergeAcross="27" ss:MergeDown="1" ss:StyleID="m17656400">
              <Data
      ss:Type="String">механизм, грузоподъемность,&#10;емкость ковша</Data>
            </Cell>
            <Cell ss:MergeAcross="40" ss:StyleID="m17656420">
              <Data ss:Type="String">способ</Data>
            </Cell>
            <Cell ss:MergeAcross="28" ss:StyleID="m17656440">
              <Data ss:Type="String">дата (число, месяц), время,&#10;ч. мин.</Data>
            </Cell>
            <Cell ss:MergeAcross="14" ss:MergeDown="1" ss:StyleID="m17656460">
              <Data
      ss:Type="String">время допол-&#10;нительных&#10;операций, мин.</Data>
            </Cell>
            <Cell ss:MergeAcross="14" ss:MergeDown="1" ss:StyleID="m17656480">
              <Data
      ss:Type="String">подпись ответ-&#10;ственного лица</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18.75" ss:StyleID="s29">
            <Cell ss:Index="91" ss:MergeAcross="33" ss:StyleID="m17656500">
              <Data
      ss:Type="String">ручной, механизированный, наливом, самосвалом</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="m17655808">
              <Data ss:Type="String">код</Data>
            </Cell>
            <Cell ss:MergeAcross="14" ss:StyleID="m17655828">
              <Data ss:Type="String">прибытия</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="s442">
              <Data ss:Type="String">убытия</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:MergeAcross="9" ss:StyleID="m17655868">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:MergeAcross="25" ss:StyleID="m17655888">
              <Data ss:Type="Number">11</Data>
            </Cell>
            <Cell ss:MergeAcross="25" ss:StyleID="m17655908">
              <Data ss:Type="Number">12</Data>
            </Cell>
            <Cell ss:MergeAcross="27" ss:StyleID="m17655928">
              <Data ss:Type="Number">13</Data>
            </Cell>
            <Cell ss:MergeAcross="33" ss:StyleID="m17655948">
              <Data ss:Type="Number">14</Data>
            </Cell>
            <Cell ss:MergeAcross="6" ss:StyleID="m17655968">
              <Data ss:Type="Number">15</Data>
            </Cell>
            <Cell ss:MergeAcross="14" ss:StyleID="m17655988">
              <Data ss:Type="Number">16</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m17655296">
              <Data ss:Type="Number">17</Data>
            </Cell>
            <Cell ss:MergeAcross="14" ss:StyleID="m17655316">
              <Data ss:Type="Number">18</Data>
            </Cell>
            <Cell ss:MergeAcross="14" ss:StyleID="m17655336">
              <Data ss:Type="Number">19</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:MergeAcross="9" ss:StyleID="m17655356">
              <Data ss:Type="String">погрузка</Data>
            </Cell>
            <Cell ss:MergeAcross="25" ss:StyleID="m17655376"/>
            <Cell ss:MergeAcross="25" ss:StyleID="m17655396"/>
            <Cell ss:MergeAcross="27" ss:StyleID="m17655416"/>
            <Cell ss:MergeAcross="33" ss:StyleID="s434"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m17655456"/>
            <Cell ss:MergeAcross="14" ss:StyleID="m17655476"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m17654784"/>
            <Cell ss:MergeAcross="14" ss:StyleID="m17654804"/>
            <Cell ss:MergeAcross="14" ss:StyleID="m17654824"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:MergeAcross="9" ss:StyleID="m17654844">
              <Data ss:Type="String">разгрузка</Data>
            </Cell>
            <Cell ss:MergeAcross="25" ss:StyleID="m17654864"/>
            <Cell ss:MergeAcross="25" ss:StyleID="m17654884"/>
            <Cell ss:MergeAcross="27" ss:StyleID="m17654904"/>
            <Cell ss:MergeAcross="33" ss:StyleID="s434"/>
            <Cell ss:MergeAcross="6" ss:StyleID="m17654944"/>
            <Cell ss:MergeAcross="14" ss:StyleID="m17654964"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m17654272"/>
            <Cell ss:MergeAcross="14" ss:StyleID="m17654292"/>
            <Cell ss:MergeAcross="14" ss:StyleID="m17654312"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="3" ss:StyleID="s29"/>
          <Row ss:AutoFitHeight="0" ss:Height="9.9375" ss:StyleID="s29">
            <Cell ss:MergeAcross="142" ss:StyleID="m17654332">
              <Data ss:Type="String">П Р О Ч И Е   С В Е Д Е Н И Я  ( з а п о л н я е т с я   о р г а н и з а ц и е й ,  в л а д е л ь ц е м   а в т о т р а н с п о р т а)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.9375" ss:StyleID="s29">
            <Cell ss:MergeAcross="39" ss:StyleID="m17654352">
              <Data ss:Type="String">расстояние перевозки по группам дорог, км</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:MergeDown="2" ss:StyleID="m17654372">
              <Data
      ss:Type="String">код экс-&#10;педиро-&#10;вания&#10;груза</Data>
            </Cell>
            <Cell ss:MergeAcross="24" ss:StyleID="m17654392">
              <Data ss:Type="String">за транспортные услуги</Data>
            </Cell>
            <Cell ss:MergeAcross="17" ss:MergeDown="2" ss:StyleID="m17654412">
              <Data
      ss:Type="String">сумма штрафа за&#10;неправильное&#10;оформление до-&#10;кументов, руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="26" ss:StyleID="m17654432">
              <Data ss:Type="String">поправочный коэффициент</Data>
            </Cell>
            <Cell ss:MergeAcross="23" ss:StyleID="m17654452">
              <Data ss:Type="String">время простоя, ч. мин.</Data>
            </Cell>
            <Cell ss:Index="152">
              <Data ss:Type="String">Таксировка:</Data>
            </Cell>
            <Cell ss:Index="167" ss:MergeAcross="23" ss:StyleID="s405"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="14.0625" ss:StyleID="s29">
            <Cell ss:MergeAcross="7" ss:MergeDown="1" ss:StyleID="m17653780">
              <Data
      ss:Type="String">всего</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:MergeDown="1" ss:StyleID="m17653800">
              <Data
      ss:Type="String">в гор.</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:MergeDown="1" ss:StyleID="m17653820">
              <Data
      ss:Type="String">I гр.</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:MergeDown="1" ss:StyleID="m17653840">
              <Data
      ss:Type="String">II гр.</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:MergeDown="1" ss:StyleID="m17653860">
              <Data
      ss:Type="String">III гр.</Data>
            </Cell>
            <Cell ss:Index="50" ss:MergeAcross="10" ss:MergeDown="1" ss:StyleID="m17653880">
              <Data
      ss:Type="String">с клиента</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:MergeDown="1" ss:StyleID="m17653900">
              <Data
      ss:Type="String">причитается&#10;водителю</Data>
            </Cell>
            <Cell ss:Index="93" ss:MergeAcross="12" ss:MergeDown="1" ss:StyleID="m17653920">
              <Data
      ss:Type="String">расценка водителю</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:MergeDown="1" ss:StyleID="m17653940">
              <Data
      ss:Type="String">основной&#10;тариф</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:MergeDown="1" ss:StyleID="m216563200">
              <Data
      ss:Type="String">под погруз-&#10;кой</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:MergeDown="1" ss:StyleID="m216563220">
              <Data
      ss:Type="String">под раз-&#10;грузкой</Data>
            </Cell>
            <Cell ss:Index="146" ss:MergeAcross="44" ss:StyleID="s380"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="14.0625" ss:StyleID="s29">
            <Cell ss:Index="146" ss:MergeAcross="44" ss:StyleID="s369"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:MergeAcross="7" ss:StyleID="m216563280">
              <Data ss:Type="Number">20</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m216563300">
              <Data ss:Type="Number">21</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m216563320">
              <Data ss:Type="Number">22</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m216563340">
              <Data ss:Type="Number">23</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m216563360">
              <Data ss:Type="Number">24</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m216563380">
              <Data ss:Type="Number">25</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m216563008">
              <Data ss:Type="Number">26</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m216563028">
              <Data ss:Type="Number">27</Data>
            </Cell>
            <Cell ss:MergeAcross="17" ss:StyleID="m216563048">
              <Data ss:Type="Number">28</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:StyleID="m216563068">
              <Data ss:Type="Number">29</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m216563088">
              <Data ss:Type="Number">30</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m216563108">
              <Data ss:Type="Number">31</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="m216562808">
              <Data ss:Type="Number">32</Data>
            </Cell>
            <Cell ss:Index="146" ss:MergeAcross="44" ss:StyleID="s369"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:MergeAcross="7" ss:StyleID="m216562848"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m216562868"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m216562888"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m216562908"/>
            <Cell ss:MergeAcross="7" ss:StyleID="m216562928"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216562948"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m216562968"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m216562988"/>
            <Cell ss:MergeAcross="17" ss:StyleID="m216562688"/>
            <Cell ss:MergeAcross="12" ss:StyleID="m216562708"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m216562728"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m216562748"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m216562768"/>
            <Cell ss:Index="146" ss:MergeAcross="44" ss:StyleID="s369"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="2.25" ss:StyleID="s29"/>
          <Row ss:AutoFitHeight="0" ss:Height="18.75" ss:StyleID="s29">
            <Cell ss:MergeAcross="16" ss:MergeDown="2" ss:StyleID="m216561884">
              <Data
      ss:Type="String">Расчет&#10;стоимости</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:MergeDown="1" ss:StyleID="m216561904">
              <Data
      ss:Type="String">За тонны</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:MergeDown="1" ss:StyleID="m216561924">
              <Data
      ss:Type="String">За тонно-км</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:MergeDown="1" ss:StyleID="m216561944">
              <Data
      ss:Type="String">Погрузочно- разгрузочные работы, тонн</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:MergeDown="1" ss:StyleID="m216561964">
              <Data
      ss:Type="String">Недогрузка автомобиля и прицепа</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:MergeDown="1" ss:StyleID="m216561984">
              <Data
      ss:Type="String">Экспеди- рование</Data>
            </Cell>
            <Cell ss:MergeAcross="20" ss:StyleID="m216562176">
              <Data ss:Type="String">Сверхнормативный простой, ч. мин. при</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:MergeDown="1" ss:StyleID="m216562196">
              <Data
      ss:Type="String">За сроч- ность заказа</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:MergeDown="1" ss:StyleID="m216562216">
              <Data
      ss:Type="String">За специ- альный транспорт</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:MergeDown="1" ss:StyleID="m216562236">
              <Data
      ss:Type="String">Прочие доплаты</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:MergeDown="1" ss:StyleID="m216562256">
              <Data
      ss:Type="String">Всего</Data>
            </Cell>
            <Cell ss:Index="135" ss:MergeAcross="55" ss:StyleID="s380"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.9375" ss:StyleID="s29">
            <Cell ss:Index="74" ss:MergeAcross="10" ss:StyleID="m216562296">
              <Data
      ss:Type="String">погрузке</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="m216562316">
              <Data ss:Type="String">разгрузке</Data>
            </Cell>
            <Cell ss:Index="135" ss:MergeAcross="55" ss:StyleID="s369"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="10.5" ss:StyleID="s29">
            <Cell ss:Index="18" ss:MergeAcross="7" ss:StyleID="m216562004">
              <Data
      ss:Type="Number">33</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m216562024">
              <Data ss:Type="Number">34</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m216562044">
              <Data ss:Type="Number">35</Data>
            </Cell>
            <Cell ss:MergeAcross="13" ss:StyleID="m216562064">
              <Data ss:Type="Number">36</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m216561824">
              <Data ss:Type="Number">37</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m216561844">
              <Data ss:Type="Number">38</Data>
            </Cell>
            <Cell ss:MergeAcross="9" ss:StyleID="m216561864">
              <Data ss:Type="Number">39</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m216561352">
              <Data ss:Type="Number">40</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="m216561372">
              <Data ss:Type="Number">41</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m216561392">
              <Data ss:Type="Number">42</Data>
            </Cell>
            <Cell ss:MergeAcross="8" ss:StyleID="m216561312">
              <Data ss:Type="Number">43</Data>
            </Cell>
            <Cell ss:Index="135" ss:MergeAcross="55" ss:StyleID="s369"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:MergeAcross="16" ss:StyleID="s358">
              <Data ss:Type="String">Выполнено</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m216561684"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216561704"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m216561724"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m216561744"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m216561764"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m216561784"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m216561804"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216561192"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m216561212"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216561232"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216561252"/>
            <Cell ss:Index="136" ss:StyleID="s188">
              <Data ss:Type="String">Таксировщик</Data>
            </Cell>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:MergeAcross="11" ss:StyleID="s365"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:StyleID="s188"/>
            <Cell ss:MergeAcross="26" ss:StyleID="s365"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:MergeAcross="16" ss:StyleID="s358">
              <Data ss:Type="String">Расценка, руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m216561060"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216561080"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m216561100"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m216561152"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m216561172"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m216560920"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m216560940"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216560960"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m216560980"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216560720"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216560740"/>
            <Cell ss:Index="150" ss:MergeAcross="11" ss:StyleID="s349">
              <Data
      ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s179"/>
            <Cell ss:StyleID="s179"/>
            <Cell ss:MergeAcross="26" ss:StyleID="s349">
              <Data ss:Type="String">(расшифровка подписи)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.5625" ss:StyleID="s29">
            <Cell ss:MergeAcross="16" ss:StyleID="m216560760">
              <Data ss:Type="String">К оплате, руб. коп.</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="m216560780"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216560800"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m216560820"/>
            <Cell ss:MergeAcross="13" ss:StyleID="m216560840"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m216560860"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m216560880"/>
            <Cell ss:MergeAcross="9" ss:StyleID="m216560900"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216561000"/>
            <Cell ss:MergeAcross="10" ss:StyleID="m216561020"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216560640"/>
            <Cell ss:MergeAcross="8" ss:StyleID="m216560660"/>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.31496062992125984"/>
            <Footer x:Margin="0.31496062992125984"/>
            <PageMargins x:Bottom="0" x:Left="0.11811023622047245" x:Right="0"
             x:Top="0.15748031496062992"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <VerticalResolution>0</VerticalResolution>
          </Print>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>51</ActiveRow>
              <ActiveCol>145</ActiveCol>
              <RangeSelection>R52C146:R52C190</RangeSelection>
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
    <Row ss:AutoFitHeight="0" ss:Height="12" ss:StyleID="s18">
      <Cell ss:MergeAcross="10" ss:StyleID="m17964052"/>
      <Cell ss:MergeAcross="19" ss:StyleID="m17964072"/>
      <Cell ss:MergeAcross="12" ss:StyleID="s579"/>
      <Cell ss:MergeAcross="11" ss:StyleID="m17964112">
        <Data ss:Type="String">
          <xsl:value-of select="@Count"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="15" ss:StyleID="m17964132">
        <Data ss:Type="String">
          <xsl:value-of select="@RealPriceWithNds"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="38" ss:StyleID="m17964152">
        <Data ss:Type="String">
          <xsl:value-of select="@FullDetailName"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="10" ss:StyleID="m17964172">
        <Data ss:Type="String">
          <xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Name"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="10" ss:StyleID="s583">
        <Data ss:Type="String">
          <xsl:value-of select="@PackType"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="10" ss:StyleID="m17964212">
        <Data ss:Type="Number">
          <xsl:value-of select="@CountOfPlaces"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="13" ss:StyleID="m17963520">
        <Data ss:Type="Number">
          <xsl:value-of select="@NetMass"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="10" ss:StyleID="m17963540">
        <Data ss:Type="Number">
          <xsl:value-of select="@SumWithNds"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="17" ss:StyleID="m17963560"/>
    </Row>
  </xsl:template>

</xsl:stylesheet>
