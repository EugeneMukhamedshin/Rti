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
        <Style ss:ID="m259883700">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="m259883740">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m259883760">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m259883780">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m259883456">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m259883476">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m259883496">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m259883516">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m259883536">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m259883556">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m128052736">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="m128052756">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m128052776">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m128052796">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m128052816">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m128052836">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="m128052856">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s62">
          <Borders/>
        </Style>
        <Style ss:ID="s64">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s66">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s68">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s70">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s72">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204"/>
        </Style>
        <Style ss:ID="s73">
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204"/>
        </Style>
        <Style ss:ID="s74">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s75">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s77">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s79">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"
           ss:Italic="1"/>
        </Style>
        <Style ss:ID="s82">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9"/>
        </Style>
        <Style ss:ID="s83">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s86">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Italic="1"/>
        </Style>
        <Style ss:ID="s87">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Italic="1"/>
        </Style>
        <Style ss:ID="s88">
          <Alignment ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s89">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s91">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Italic="1"/>
        </Style>
        <Style ss:ID="s93">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
        </Style>
        <Style ss:ID="s94">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"
           ss:Italic="1"/>
          <Interior/>
        </Style>
        <Style ss:ID="s95">
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"
           ss:Italic="1"/>
        </Style>
        <Style ss:ID="s96">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9"/>
        </Style>
        <Style ss:ID="s98">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s99">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9" ss:Bold="1"
           ss:Italic="1"/>
        </Style>
        <Style ss:ID="s100">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Italic="1"/>
        </Style>
        <Style ss:ID="s101">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Italic="1"/>
        </Style>
        <Style ss:ID="s103">
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s104">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s105">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
        </Style>
        <Style ss:ID="s124">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s125">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s142">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Borders/>
        </Style>
        <Style ss:ID="s143">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s150">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s151">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s152">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s153">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s155">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s157">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s163">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s164">
          <Alignment ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s165">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s166">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s168">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s169">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s172">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s178">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s179">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s189">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s190">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s192">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
          <Interior/>
        </Style>
        <Style ss:ID="s194">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <Interior/>
        </Style>
        <Style ss:ID="s195">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <Interior/>
        </Style>
        <Style ss:ID="s196">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
          <Interior/>
        </Style>
        <Style ss:ID="s197">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
          <Interior/>
        </Style>
        <Style ss:ID="s199">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
          <Interior/>
        </Style>
        <Style ss:ID="s200">
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
          <Interior/>
        </Style>
        <Style ss:ID="s201">
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <Interior/>
        </Style>
        <Style ss:ID="s203">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s205">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s206">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s207">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s209">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s210">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s211">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s212">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s213">
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s214">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s215">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s216">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204"/>
        </Style>
        <Style ss:ID="s217">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9"/>
        </Style>
        <Style ss:ID="s218">
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9"/>
        </Style>
        <Style ss:ID="s219">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204"/>
        </Style>
        <Style ss:ID="s221">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204"/>
        </Style>
        <Style ss:ID="s223">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s224">
          <Alignment ss:Vertical="Center"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s225">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s226">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s227">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8"/>
        </Style>
        <Style ss:ID="s228">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
        </Style>
        <Style ss:ID="s230">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"
           ss:Italic="1"/>
          <Interior/>
        </Style>
        <Style ss:ID="s231">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Interior/>
        </Style>
        <Style ss:ID="s232">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <Interior/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s233">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9"/>
        </Style>
        <Style ss:ID="s235">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="7"/>
        </Style>
        <Style ss:ID="s236">
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s238">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"
           ss:Italic="1"/>
        </Style>
        <Style ss:ID="s239">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s240">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s241">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s243">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"
           ss:Italic="1"/>
          <Interior/>
        </Style>
        <Style ss:ID="s245">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
          <Interior/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s246">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s248">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s251">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s253">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="9"/>
        </Style>
        <Style ss:ID="s255">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s256">
          <Alignment ss:Vertical="Top"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s257">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s259">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s260">
          <Alignment ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s261">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s262">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s264">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"
           ss:Italic="1"/>
        </Style>
        <Style ss:ID="s267">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"
           ss:Italic="1"/>
        </Style>
        <Style ss:ID="s268">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"
           ss:Italic="1"/>
        </Style>
        <Style ss:ID="s270">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"
           ss:Italic="1"/>
        </Style>
        <Style ss:ID="s274">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s276">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
        <Style ss:ID="s279">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s280">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s281">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s283">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s284">
          <Borders/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s285">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="6"/>
        </Style>
        <Style ss:ID="s287">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"
           ss:Italic="1"/>
        </Style>
        <Style ss:ID="s290">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="8" ss:Bold="1"
           ss:Italic="1"/>
        </Style>
        <Style ss:ID="s291">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Bold="1"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s293">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders/>
          <Font ss:FontName="Arial Cyr" x:CharSet="204" ss:Size="6"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Универсальный">
        <Table x:FullColumns="1" x:FullRows="1">
          <Column ss:AutoFitWidth="0" ss:Width="38.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="39"/>
          <Column ss:AutoFitWidth="0" ss:Width="29.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="130.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="31.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="29.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="6"/>
          <Column ss:Index="9" ss:AutoFitWidth="0" ss:Width="39"/>
          <Column ss:AutoFitWidth="0" ss:Width="42"/>
          <Column ss:AutoFitWidth="0" ss:Width="59.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="33" ss:Span="1"/>
          <Column ss:Index="14" ss:AutoFitWidth="0" ss:Width="36.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="61.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="28.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="40.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="38.25"/>
          <Row ss:AutoFitHeight="0" ss:Height="18.75">
            <Cell ss:Index="3" ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:MergeAcross="8" ss:StyleID="s64">
              <Data ss:Type="String">Приложение №1 к письму ФНР России от 21.10.2013г.</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:MergeAcross="3" ss:StyleID="s66">
              <Data ss:Type="String">Приложение №1 к постановлению Правительства Российской Федерации от 26 декабря 2011г. №1137 </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s68">
              <Data ss:Type="String">Универсальный</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s70">
              <Data ss:Type="String">
                Счет-фактура №<xsl:value-of select="set[@name='Shipments']/Shipment/@SortOrder"/> от <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/@Date, 'dd.MM.yyyy')"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s72"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(1)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s68">
              <Data ss:Type="String">передаточный </Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="s70">
              <Data ss:Type="String">Исправление №                 от</Data>
            </Cell>
            <Cell ss:StyleID="s72"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:MergeAcross="4" ss:StyleID="s77"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(1а)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:StyleID="s68">
              <Data ss:Type="String">документ</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s79">
              <Data ss:Type="String">ПРОДАВЕЦ:</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="s82">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Name"/>
              </Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s83"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(2)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:Index="3" ss:MergeAcross="1" ss:StyleID="s86">
              <Data ss:Type="String">Адрес:</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="s82">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Address"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(2а)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:StyleID="s88">
              <Data ss:Type="String">Статус</Data>
            </Cell>
            <Cell ss:StyleID="s89">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s91">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                <I>
                  ИНН/КПП <Font html:Size="8">продавца:</Font>
                </I>
              </ss:Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="s82">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Inn"/>  /  <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@Kpp"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(2б)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
            <Cell ss:Index="22" ss:StyleID="s93"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:Index="3" ss:StyleID="s94">
              <Data ss:Type="String">ГРУЗООТПРАВИТЕЛЬ и его адрес</Data>
            </Cell>
            <Cell ss:StyleID="s95"/>
            <Cell ss:StyleID="s96">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Request/Manufacturer/@FullName"/>
              </Data>
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
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(3)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:MergeDown="2" ss:StyleID="s98">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                <B>1</B>
                <Font>-счет-фактура и передаточный документ (акт)</Font>
              </ss:Data>
            </Cell>
            <Cell ss:StyleID="s99">
              <Data ss:Type="String">ГРУЗОПОЛУЧАТЕЛЬ и его адрес</Data>
            </Cell>
            <Cell ss:StyleID="s95"/>
            <Cell ss:MergeAcross="12" ss:StyleID="s82">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Recipient/@FullName"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(4)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:Index="3" ss:MergeAcross="1" ss:StyleID="s86">
              <Data ss:Type="String">К платежно-расчетному документу №</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:StyleID="s82">
              <Data ss:Type="String">
                №<xsl:value-of select="set[@name='Shipments']/Shipment/Payment/@PaymentDocNumber"/> от <xsl:value-of select="rti:FormatDate(set[@name='Shipments']/Shipment/Payment/@PaymentDate, 'dd.MM.yyyy')"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(5)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:Index="3" ss:MergeAcross="1" ss:StyleID="s79">
              <Data ss:Type="String">ПОКУПАТЕЛЬ</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:StyleID="s82">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(6)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:MergeAcross="1" ss:MergeDown="2" ss:StyleID="s98">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                <B>2</B>
                <Font>- передаточный документ (акт)</Font>
              </ss:Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s86">
              <Data ss:Type="String">Адрес:</Data>
            </Cell>
            <Cell ss:MergeAcross="12" ss:StyleID="s82">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Address"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(6а)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:Index="3" ss:StyleID="s100">
              <Data ss:Type="String">ИНН/КПП покупателя</Data>
            </Cell>
            <Cell ss:StyleID="s101"/>
            <Cell ss:MergeAcross="12" ss:StyleID="s82">
              <Data ss:Type="String">
                <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Inn"/> / <xsl:value-of select="set[@name='Shipments']/Shipment/Payer/@Kpp"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(6б)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="12">
            <Cell ss:Index="3" ss:MergeAcross="1" ss:StyleID="s91">
              <Data ss:Type="String">Валюта: наименование, код</Data>
            </Cell>
            <Cell ss:MergeAcross="10" ss:StyleID="s87">
              <Data ss:Type="String">Российский рубль,643</Data>
            </Cell>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s83"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(7)</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="0.75">
            <Cell ss:Index="3" ss:StyleID="s104"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="0.75">
            <Cell ss:Index="3" ss:StyleID="s104"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="15" ss:StyleID="s105">
            <Cell ss:MergeDown="1" ss:StyleID="m128052736">
              <Data ss:Type="String">№     п/п</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m128052756">
              <ss:Data ss:Type="String"
      xmlns="http://www.w3.org/TR/REC-html40">
                <B>Код</B>
                <Font html:Size="8"> товара  /работ, услуг</Font>
              </ss:Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:MergeDown="1" ss:StyleID="m128052776">
              <Data
      ss:Type="String">Наименование товара (описание выполненных работ, оказанных услуг) , имущественного права</Data>
            </Cell>
            <Cell ss:StyleID="s124">
              <Data ss:Type="String">Единица измерения</Data>
            </Cell>
            <Cell ss:StyleID="s124"/>
            <Cell ss:StyleID="s124"/>
            <Cell ss:MergeDown="1" ss:StyleID="m128052796">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                Количе-ство  <Font html:Size="7"> (объем)</Font>
              </ss:Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m128052816">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                Цена<Font html:Size="7">  (тариф) за единицу измерения</Font>
              </ss:Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m128052836">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                Стоимость товаров                  <Font html:Size="7">( работ,услуг), имущественных прав без налога-</Font><Font> всего </Font>
              </ss:Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m259883456">
              <Data ss:Type="String">В том числе сумма акциза</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m259883476">
              <Data ss:Type="String">Налого-вая ставка</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m259883496">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                Сумма налога <Font html:Size="7">предъ-являемая покупателю</Font>
              </ss:Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m259883516">
              <ss:Data ss:Type="String" xmlns="http://www.w3.org/TR/REC-html40">
                Стоимость товаров          <Font html:Size="7">( работ,услуг), имущественных прав с  налогом-</Font><Font> всего </Font>
              </ss:Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m259883536">
              <Data ss:Type="String">Страна</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m259883556">
              <Data ss:Type="String">Номер таможенной деклорации</Data>
            </Cell>
            <Cell ss:StyleID="s142"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="50.25" ss:StyleID="s105">
            <Cell ss:Index="6" ss:StyleID="s143">
              <Data ss:Type="String">Код</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m128052856">
              <Data ss:Type="String">Условное обозначение   (националь-ное)</Data>
            </Cell>
            <Cell ss:Index="16" ss:StyleID="s125">
              <Data ss:Type="String">Цифровой код</Data>
            </Cell>
            <Cell ss:StyleID="s150">
              <Data ss:Type="String">Краткое наимено-вание</Data>
            </Cell>
            <Cell ss:Index="19" ss:StyleID="s142"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75" ss:StyleID="s151">
            <Cell ss:StyleID="s152">
              <Data ss:Type="String">А</Data>
            </Cell>
            <Cell ss:StyleID="s153">
              <Data ss:Type="String">Б</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s155">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:StyleID="s157">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m259883700">
              <Data ss:Type="String">2а</Data>
            </Cell>
            <Cell ss:StyleID="s157">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:StyleID="s157">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:StyleID="s157">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:StyleID="s157">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:StyleID="s157">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:StyleID="s157">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:StyleID="s157">
              <Data ss:Type="Number">9</Data>
            </Cell>
            <Cell ss:StyleID="s157">
              <Data ss:Type="Number">10</Data>
            </Cell>
            <Cell ss:StyleID="s157">
              <Data ss:Type="String">10а</Data>
            </Cell>
            <Cell ss:StyleID="s163">
              <Data ss:Type="Number">11</Data>
            </Cell>
            <Cell ss:StyleID="s164"/>
          </Row>

          <xsl:apply-templates select="set[@name='ShipmentItems']/ShipmentItem" />

          <Row>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:MergeAcross="2" ss:StyleID="m259883760">
              <Data ss:Type="String">Всего к оплате</Data>
            </Cell>
            <Cell ss:MergeAcross="3" ss:StyleID="m259883780"/>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s189" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">2492</Data>
            </Cell>
            <Cell ss:StyleID="s189"/>
            <Cell ss:StyleID="s178"/>
            <Cell ss:StyleID="s172" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">448.56</Data>
            </Cell>
            <Cell ss:StyleID="s178" ss:Formula="=SUM(R[-{count(set[@name='ShipmentItems']/ShipmentItem)}]C:R[-1]C)">
              <Data ss:Type="Number">2940.56</Data>
            </Cell>
            <Cell ss:StyleID="s172"/>
            <Cell ss:StyleID="s178"/>
            <Cell ss:StyleID="s190"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s192">
              <Data ss:Type="String">Документ</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s194">
              <Data ss:Type="String">Руководитель организации</Data>
            </Cell>
            <Cell ss:StyleID="s196"/>
            <Cell ss:StyleID="s196"/>
            <Cell ss:StyleID="s196"/>
            <Cell ss:StyleID="s196"/>
            <Cell ss:StyleID="s196"/>
            <Cell ss:StyleID="s197"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s195">
              <Data ss:Type="String">Главный бухгалтер</Data>
            </Cell>
            <Cell ss:StyleID="s199"/>
            <Cell ss:StyleID="s200"/>
            <Cell ss:StyleID="s199"/>
            <Cell ss:StyleID="s200"/>
            <Cell ss:StyleID="s201"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s203">
              <Data ss:Type="String">составлен на</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s169">
              <Data ss:Type="String">или иное уполномоченное лицо</Data>
            </Cell>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s206"/>
            <Cell ss:StyleID="s207"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s209">
              <Data ss:Type="String">Холодников Ю.В.</Data>
            </Cell>
            <Cell ss:StyleID="s210"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s209">
              <Data ss:Type="String">или иное уполномоченное лицо</Data>
            </Cell>
            <Cell ss:StyleID="s211"/>
            <Cell ss:StyleID="s212"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s209">
              <Data ss:Type="String">Холодникова В.П.</Data>
            </Cell>
            <Cell ss:StyleID="s213"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18.75">
            <Cell ss:StyleID="s211"/>
            <Cell ss:StyleID="s214">
              <Data ss:Type="String">л.</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="s169">
              <Data ss:Type="String">Индивидуальный предприниматель</Data>
            </Cell>
            <Cell ss:StyleID="s215"/>
            <Cell ss:StyleID="s216"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s216"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s216"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s218"/>
            <Cell ss:StyleID="s218"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25">
            <Cell ss:Index="3" ss:StyleID="s219"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:StyleID="s73"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s221">
              <Data ss:Type="String">фио</Data>
            </Cell>
            <Cell ss:StyleID="s223"/>
            <Cell ss:StyleID="s224">
              <Data ss:Type="String">реквизиты свидетельства о регистрации индивидуального предпринимателя</Data>
            </Cell>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s103"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:Index="3" ss:StyleID="s225">
              <Data ss:Type="String">Примечание.Первый экземпляр-покупателю, второй экхземпляр- продавцу.</Data>
            </Cell>
            <Cell ss:StyleID="s226"/>
            <Cell ss:StyleID="s227"/>
            <Cell ss:StyleID="s227"/>
            <Cell ss:StyleID="s227"/>
            <Cell ss:StyleID="s227"/>
            <Cell ss:StyleID="s227"/>
            <Cell ss:StyleID="s227"/>
            <Cell ss:StyleID="s228"/>
            <Cell ss:StyleID="s228"/>
            <Cell ss:StyleID="s228"/>
            <Cell ss:StyleID="s228"/>
            <Cell ss:StyleID="s228"/>
            <Cell ss:StyleID="s228"/>
            <Cell ss:StyleID="s228"/>
            <Cell ss:StyleID="s228"/>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="3" ss:StyleID="s230">
              <Data ss:Type="String">Основание передачи (сдачи) / получения (приемки)</Data>
            </Cell>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s231"/>
            <Cell ss:StyleID="s232">
              <Data ss:Type="String">(8)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5">
            <Cell ss:StyleID="s233"/>
            <Cell ss:StyleID="s233"/>
            <Cell ss:StyleID="s233"/>
            <Cell ss:StyleID="s233"/>
            <Cell ss:MergeAcross="12" ss:StyleID="s235">
              <Data ss:Type="String">договор, доверенность и др.</Data>
            </Cell>
            <Cell ss:StyleID="s236"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="3" ss:StyleID="s238">
              <Data ss:Type="String">Данные о транспортировке и грузе</Data>
            </Cell>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s239">
              <Data ss:Type="String">(9)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25">
            <Cell ss:StyleID="s233"/>
            <Cell ss:StyleID="s233"/>
            <Cell ss:StyleID="s233"/>
            <Cell ss:StyleID="s233"/>
            <Cell ss:StyleID="s240">
              <Data ss:Type="String">транспортная накладная, поручение экспедитору,/складская расписка и др. /масса нетто/брутто груза, еслине приведены ссылки на транспортные документы, содержащие эти сведения</Data>
            </Cell>
            <Cell ss:StyleID="s241"/>
            <Cell ss:StyleID="s241"/>
            <Cell ss:StyleID="s241"/>
            <Cell ss:StyleID="s241"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s74"/>
            <Cell ss:StyleID="s239"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="7" ss:StyleID="s230">
              <Data ss:Type="String">Товар (груз) передал/ услуги, результаты работ, права сдал</Data>
            </Cell>
            <Cell ss:StyleID="s232">
              <Data ss:Type="String">(10)</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="s243">
              <Data ss:Type="String">Товар (груз) получил/ услуги, результаты работ, права принял</Data>
            </Cell>
            <Cell ss:StyleID="s245">
              <Data ss:Type="String">(15)</Data>
            </Cell>
            <Cell ss:Index="23" ss:StyleID="s246"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s248">
              <Data ss:Type="String">Технолог</Data>
            </Cell>
            <Cell ss:StyleID="s233"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:Index="6" ss:MergeAcross="2" ss:StyleID="s251">
              <Data ss:Type="String">Наумова Е.В.</Data>
            </Cell>
            <Cell ss:StyleID="s239"/>
            <Cell ss:StyleID="s253"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s218"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s75"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="7.5">
            <Cell ss:MergeAcross="1" ss:StyleID="s255">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s256"/>
            <Cell ss:StyleID="s257">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s256"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s255">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s239"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s259">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s260"/>
            <Cell ss:StyleID="s261">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s260"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s255">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s75"/>
          </Row>
          <Row ss:StyleID="s262">
            <Cell ss:MergeAcross="7" ss:StyleID="s264">
              <Data ss:Type="String">Дата отгрузки, передачи (сдачи) </Data>
            </Cell>
            <Cell ss:StyleID="s239">
              <Data ss:Type="String">(11)</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="s267">
              <Data ss:Type="String">Дата отгрузки, получения (приемки) </Data>
            </Cell>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(16)</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="7" ss:StyleID="s270">
              <Data ss:Type="String">Иные сведения об отгрузке, передаче</Data>
            </Cell>
            <Cell ss:StyleID="s239"/>
            <Cell ss:MergeAcross="7" ss:StyleID="s267">
              <Data ss:Type="String">Иные сведения о получении, приемке</Data>
            </Cell>
            <Cell ss:StyleID="s75"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s239">
              <Data ss:Type="String">(12)</Data>
            </Cell>
            <Cell ss:StyleID="s253"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(17)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="9.75">
            <Cell ss:MergeAcross="7" ss:StyleID="s274">
              <Data ss:Type="String">ссылки на неотъемлемые приложения,сопутствующие документы, иные документы и т.п.</Data>
            </Cell>
            <Cell ss:StyleID="s239"/>
            <Cell ss:MergeAcross="7" ss:StyleID="s276">
              <Data ss:Type="String">(информация о наличии/отсутствии претензии;  ссылки на неотъемлемые приложения, и другии документы и т.п.)</Data>
            </Cell>
            <Cell ss:StyleID="s75"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="7" ss:StyleID="s238">
              <Data ss:Type="String">Ответственный за правильность оформления факта хозяйственной жизни</Data>
            </Cell>
            <Cell ss:StyleID="s75"/>
            <Cell ss:MergeAcross="7" ss:StyleID="s268">
              <Data ss:Type="String">Ответственный за правильность оформления факта хозяйственной жизни</Data>
            </Cell>
            <Cell ss:StyleID="s75"/>
          </Row>
          <Row>
            <Cell ss:MergeAcross="1" ss:StyleID="s248">
              <Data ss:Type="String">Специалист АУП</Data>
            </Cell>
            <Cell ss:StyleID="s233"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:Index="6" ss:MergeAcross="2" ss:StyleID="s251">
              <Data ss:Type="String">Поскребышева НА</Data>
            </Cell>
            <Cell ss:StyleID="s239">
              <Data ss:Type="String">(13)</Data>
            </Cell>
            <Cell ss:StyleID="s253"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s218"/>
            <Cell ss:StyleID="s217"/>
            <Cell ss:StyleID="s62"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s205"/>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(18)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25">
            <Cell ss:MergeAcross="1" ss:StyleID="s279">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s280"/>
            <Cell ss:StyleID="s281">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s280"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s279">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s239"/>
            <Cell ss:MergeAcross="1" ss:StyleID="s283">
              <Data ss:Type="String">(должность)</Data>
            </Cell>
            <Cell ss:StyleID="s284"/>
            <Cell ss:StyleID="s285">
              <Data ss:Type="String">(подпись)</Data>
            </Cell>
            <Cell ss:StyleID="s284"/>
            <Cell ss:MergeAcross="2" ss:StyleID="s279">
              <Data ss:Type="String">(ф.и.о.)</Data>
            </Cell>
            <Cell ss:StyleID="s213"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="27.75">
            <Cell ss:MergeAcross="7" ss:StyleID="s287">
              <Data ss:Type="String">Наименование экономического субъекта-составителя документа ( в т.ч. комиссионера/агента) ООО &quot;Элма-1&quot;,ИНН/КПП6664068381/667901001</Data>
            </Cell>
            <Cell ss:StyleID="s239">
              <Data ss:Type="String">(14)</Data>
            </Cell>
            <Cell ss:MergeAcross="7" ss:StyleID="s290">
              <Data ss:Type="String">Наименование экономического субъекта-составителя документа </Data>
            </Cell>
            <Cell ss:StyleID="s75">
              <Data ss:Type="String">(19)</Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="8.25">
            <Cell ss:MergeAcross="7" ss:StyleID="s274">
              <Data ss:Type="String">может не заполняться при проставлении печати в М.п., может быть указан ИНН/КПП</Data>
            </Cell>
            <Cell ss:StyleID="s291"/>
            <Cell ss:MergeAcross="7" ss:StyleID="s293">
              <Data ss:Type="String">может не заполняться при проставлении печати в М.п., может быть указан ИНН/КПП</Data>
            </Cell>
            <Cell ss:StyleID="s62"/>
          </Row>
          <Row>
            <Cell ss:Index="10" ss:StyleID="s62"/>
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
            <Cell ss:Index="3">
              <Data ss:Type="String">М.П.</Data>
            </Cell>
            <Cell ss:Index="12">
              <Data ss:Type="String">М.П.</Data>
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.11811023622047245"/>
            <Footer x:Margin="0.11811023622047245"/>
            <PageMargins x:Bottom="0.15748031496062992" x:Left="0.82677165354330717"
             x:Right="3.937007874015748E-2" x:Top="0.19685039370078741"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <Scale>97</Scale>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <PageBreakZoom>85</PageBreakZoom>
          <Selected/>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
        <PageBreaks xmlns="urn:schemas-microsoft-com:office:excel">
          <RowBreaks>
            <RowBreak>
              <Row>
                <xsl:choose>
                  <xsl:when test="count(set[@name='ShipmentItems']/ShipmentItem)+24 > 45">
                    <xsl:value-of select="count(set[@name='ShipmentItems']/ShipmentItem)+19"/>
                  </xsl:when>
                  <xsl:when test="count(set[@name='ShipmentItems']/ShipmentItem)+28 > 45">
                    <xsl:value-of select="count(set[@name='ShipmentItems']/ShipmentItem)+24"/>
                  </xsl:when>
                  <xsl:when test="count(set[@name='ShipmentItems']/ShipmentItem)+43 > 45">
                    <xsl:value-of select="count(set[@name='ShipmentItems']/ShipmentItem)+28"/>
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
    <Row>
      <Cell ss:StyleID="s165"/>
      <Cell ss:StyleID="s166"/>
      <Cell ss:MergeAcross="2" ss:StyleID="s168">
        <Data ss:Type="String">
          <xsl:value-of select="@FullDetailName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s172">
        <Data ss:Type="Number">
          <xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Code"/>
        </Data>
      </Cell>
      <Cell ss:MergeAcross="1" ss:StyleID="m259883740">
        <Data ss:Type="String">
          <xsl:value-of select="RequestDetail/Drawing/MeasureUnit/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s178">
        <Data ss:Type="Number">
          <xsl:value-of select="@Count"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s178">
        <Data ss:Type="Number">
          <xsl:value-of select="@RealPrice"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s178">
        <Data ss:Type="Number">
          <xsl:value-of select="@Sum"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s172">
        <Data ss:Type="String">-</Data>
      </Cell>
      <Cell ss:StyleID="s172">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsPercent div 100"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s172">
        <Data ss:Type="Number">
          <xsl:value-of select="@NdsSum"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s178">
        <Data ss:Type="Number">
          <xsl:value-of select="@SumWithNds"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s172">
        <Data ss:Type="String">-</Data>
      </Cell>
      <Cell ss:StyleID="s172">
        <Data ss:Type="String">-</Data>
      </Cell>
      <Cell ss:StyleID="s179">
        <Data ss:Type="String">-</Data>
      </Cell>
      <Cell ss:StyleID="s62"/>
    </Row>
  </xsl:template>

</xsl:stylesheet>
