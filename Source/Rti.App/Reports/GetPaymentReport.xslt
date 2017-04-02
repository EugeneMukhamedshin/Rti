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
          <Column ss:AutoFitWidth="0" ss:Width="30"/>
          <Column ss:AutoFitWidth="0" ss:Width="40"/>
          <Column ss:AutoFitWidth="0" ss:Width="60"/>
          <Column ss:AutoFitWidth="0" ss:Width="150"/>
          <Column ss:AutoFitWidth="0" ss:Width="50"/>
          <Column ss:AutoFitWidth="0" ss:Width="40"/>
          <Column ss:AutoFitWidth="0" ss:Width="60"/>
          <Column ss:AutoFitWidth="0" ss:Width="50"/>
          <Column ss:AutoFitWidth="0" ss:Width="50"/>
          <Column ss:AutoFitWidth="0" ss:Width="110"/>
          <Column ss:AutoFitWidth="0" ss:Width="220"/>
          <Row ss:Height="21">
            <Cell ss:MergeAcross="7" ss:StyleID="s71">
              <Data ss:Type="String">Журнал оплаты оснастки</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="7" ss:StyleID="s67">
              <Data ss:Type="String">с <xsl:value-of select="rti:FormatDate(Report/@StartDate)"/> по <xsl:value-of select="rti:FormatDate(Report/@EndDate)"/></Data>
            </Cell>
          </Row>
          <Row ss:Height="15.75"/>
          <Row>
            <Cell ss:StyleID="s85" ss:MergeDown="1">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:StyleID="s85" ss:MergeAcross="3">
              <Data ss:Type="String">Счет</Data>
            </Cell>
            <Cell ss:StyleID="s85" ss:MergeAcross="2">
              <Data ss:Type="String">Оплата</Data>
            </Cell>
            <Cell ss:StyleID="s85" ss:MergeAcross="1">
              <Data ss:Type="String">Отгрузка</Data>
            </Cell>
            <Cell ss:StyleID="s85" ss:MergeDown="1">
              <Data ss:Type="String">Примечание</Data>
            </Cell>
          </Row>
          <Row ss:Height="40">
            <Cell ss:Index="2" ss:StyleID="s86">
              <Data ss:Type="String">№ сч.</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Дата сч.</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Заказчик</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Сумма по сч., руб.</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">№ пл.</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Дата пл.</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Сумма оплаты, руб.</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Сумма, руб.</Data>
            </Cell>
            <Cell ss:StyleID="s86">
              <Data ss:Type="String">Счета-фактуры</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="Payments/Payment" />

          <Row>
            <Cell ss:StyleID="s79"/>
            <Cell ss:StyleID="s79"/>
            <Cell ss:StyleID="s79"/>
            <Cell ss:StyleID="s93">
              <Data ss:Type="String">Итого</Data>
            </Cell>
            <Cell ss:StyleID="s93" ss:Formula="=SUM(R[-{count(Payments/Payment)}]C:R[-1]C)">
              <Data ss:Type="Number">1400</Data>
            </Cell>
            <Cell ss:StyleID="s79"/>
            <Cell ss:StyleID="s79"/>
            <Cell ss:StyleID="s93" ss:Formula="=SUM(R[-{count(Payments/Payment)}]C:R[-1]C)">
              <Data ss:Type="Number">1400</Data>
            </Cell>
            <Cell ss:StyleID="s93" ss:Formula="=SUM(R[-{count(Payments/Payment)}]C:R[-1]C)">
              <Data ss:Type="Number">1400</Data>
            </Cell>
            <Cell ss:StyleID="s79"/>
            <Cell ss:StyleID="s79"/>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.31496062992125984" x:Data="Страница  &amp;P из &amp;N"/>
            <PageMargins x:Bottom="0.75" x:Left="0.25" x:Right="0.25" x:Top="0.75"/>
          </PageSetup>
          <Unsynced/>
          <FitToPage/>
          <Print>
            <FitHeight>0</FitHeight>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <PageBreakZoom>60</PageBreakZoom>
          <Selected/><Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>10</ActiveRow>
              <ActiveCol>7</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="Payments/Payment">
    <Row>
      <Cell ss:StyleID="s84">
        <Data ss:Type="Number">
          <xsl:value-of select="@RowNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="Request/@Number"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDate(Request/@InvoiceDate)"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="Request/Customer/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="Number">
          <xsl:value-of select="Request/@Sum"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="@PaymentDocNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDate(@PaymentDate)"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="Number">
          <xsl:value-of select="@Sum"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="Number">
          <xsl:value-of select="@ShipmentSum"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="@ShipmentDates"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s84">
        <Data ss:Type="String">
          <xsl:value-of select="@Note"/>
        </Data>
      </Cell></Row>
  </xsl:template>

</xsl:stylesheet>
