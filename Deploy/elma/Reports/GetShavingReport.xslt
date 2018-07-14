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
        <Style ss:ID="s67">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s71">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="16"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s79">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s84">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s85">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s86">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s87">
          <Alignment ss:Horizontal="Left" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s93">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="28.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="144"/>
          <Column ss:AutoFitWidth="0" ss:Width="54.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="142.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="144"/>
          <Column ss:AutoFitWidth="0" ss:Width="59.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="56.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="144"/>
          <Column ss:AutoFitWidth="0" ss:Width="72.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="67.5"/>
          <Row ss:Height="21">
            <Cell ss:MergeAcross="9" ss:StyleID="s71">
              <Data ss:Type="String">Журнал обрезки облоя</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="9" ss:StyleID="s67">
              <Data ss:Type="String">с <xsl:value-of select="rti:FormatDate(Report/@StartDate)"/> по <xsl:value-of select="rti:FormatDate(Report/@EndDate)"/></Data>
            </Cell>
          </Row>
          <Row ss:Height="15.75"/><Row ss:Height="30.75">
            <Cell ss:StyleID="s85">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">ФИО обрезчика</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Дата</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Деталь</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">ФИО прессовщика</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Входное кол-во, шт.</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Кол-во брака, шт.</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Материал</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Цена обрезки, руб.</Data>
            </Cell>
            <Cell ss:StyleID="s87">
              <Data ss:Type="String">Заработная плата, руб.</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="ShavingRecords/ShavingRecord" />

          <Row>
            <Cell ss:StyleID="s79"/>
            <Cell ss:StyleID="s79"/>
            <Cell ss:StyleID="s79"/>
            <Cell ss:StyleID="s79"/>
            <Cell ss:StyleID="s93">
              <Data ss:Type="String">Итого</Data>
            </Cell>
            <Cell ss:StyleID="s93" ss:Formula="=SUM(R[-{count(ShavingRecords/ShavingRecord)}]C:R[-1]C)">
              <Data ss:Type="Number">1400</Data>
            </Cell>
            <Cell ss:StyleID="s93" ss:Formula="=SUM(R[-{count(ShavingRecords/ShavingRecord)}]C:R[-1]C)">
              <Data ss:Type="Number">1400</Data>
            </Cell>
            <Cell ss:StyleID="s93"/>
            <Cell ss:StyleID="s93"/>
            <Cell ss:StyleID="s93" ss:Formula="=SUM(R[-{count(ShavingRecords/ShavingRecord)}]C:R[-1]C)">
              <Data ss:Type="Number">1400</Data>
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.31496062992125984" x:Data="Страница  &amp;P из &amp;N"/>
            <PageMargins x:Bottom="0.75" x:Left="0.25" x:Right="0.25" x:Top="0.75"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <Scale>76</Scale>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <PageBreakZoom>60</PageBreakZoom>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>10</ActiveRow>
              <ActiveCol>7</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios></WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="ShavingRecords/ShavingRecord">
    <Row>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="@RowNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="ShaverEmployee/@FullName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDate(@ShaveDate)"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/Detail/@Name"/> <xsl:value-of select="Drawing/Group/@Name"/>.<xsl:value-of select="Drawing/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="MakerEmployee/@FullName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="Number">
          <xsl:value-of select="@InputCount"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="Number">
          <xsl:value-of select="@FlawCount"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/Material/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="Number">
          <xsl:value-of select="Drawing/@ShavingPrice"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="Number">
          <xsl:value-of select="@Salary"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
