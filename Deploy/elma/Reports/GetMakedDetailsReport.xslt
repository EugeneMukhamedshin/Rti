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
        <Style ss:ID="s19">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s65">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s67">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:Width="51"/>
          <Column ss:AutoFitWidth="0" ss:Width="75"/>
          <Column ss:AutoFitWidth="0" ss:Width="57"/>
          <Column ss:AutoFitWidth="0" ss:Width="180.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="273.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="60.75"/>
          <Row ss:Index="2">
            <Cell ss:MergeAcross="2" ss:StyleID="s19">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDate(Report/@StartDate)"/> - <xsl:value-of select="rti:FormatDate(Report/@EndDate)"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">№ заявки</Data>
            </Cell>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">Дата заявки</Data>
            </Cell>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">Группа</Data>
            </Cell>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">Номер</Data>
            </Cell>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">Наименование</Data>
            </Cell>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">Кол-во</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="Details/row"/>

          <Row>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String"></Data>
            </Cell>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String"></Data>
            </Cell>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String"></Data>
            </Cell>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String"></Data></Cell>
            <Cell ss:StyleID="s65">
              <Data ss:Type="String">ИТОГО</Data>
            </Cell>
            <Cell ss:StyleID="s65" ss:Formula="=SUM(R[-{count(Details/row)}]C:R[-1]C)">
              <Data ss:Type="Number">0</Data>
            </Cell>
          </Row>

        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3" x:Data="Страница  &amp;P из &amp;N"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Unsynced/>
          <FitToPage/>
          <Print>
            <FitHeight>0</FitHeight>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <Scale>98</Scale>
            <HorizontalResolution>-3</HorizontalResolution>
            <VerticalResolution>-3</VerticalResolution>
          </Print>
          <PageBreakZoom>60</PageBreakZoom>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>18</ActiveRow>
              <ActiveCol>4</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="Details/row">
    <Row>
      <Cell ss:StyleID="s67">
        <Data ss:Type="Number">
          <xsl:value-of select="@RequestNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s67">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDate(@RequestDate)"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s67">
        <Data ss:Type="String">
          <xsl:value-of select="@GroupName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s67">
        <Data ss:Type="String">
          <xsl:value-of select="@DrawingName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s67">
        <Data ss:Type="String">
          <xsl:value-of select="@DetailName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s67">
        <Data ss:Type="Number">
          <xsl:value-of select="@DoneCount"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>
</xsl:stylesheet>
