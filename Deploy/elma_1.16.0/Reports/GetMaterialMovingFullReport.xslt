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
        <Style ss:ID="s16">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s17">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s18">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s20">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="80"/>
          <Column ss:Index="3" ss:AutoFitWidth="0" ss:Width="60"/>
          <Column ss:AutoFitWidth="0" ss:Width="53.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="66.75"/>
          <Column ss:Index="6" ss:AutoFitWidth="0" ss:Width="80"/>
          <Column ss:AutoFitWidth="0" ss:Width="51"/>
          <Column ss:AutoFitWidth="0" ss:Width="67.5"/>
          <Row>
            <Cell ss:MergeAcross="7" ss:StyleID="s20">
              <Data ss:Type="String">
                Учет материалов <xsl:value-of select="Report/@StartDate"/> - <xsl:value-of select="Report/@EndDate"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:Index="3" ss:Height="60">
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Сальдо на начало периода, кг</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">По плану (заявка), кг</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Закуплено, кг</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Передано (наряд), кг</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Отгружено (накладная), кг</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Сальдо на конец периода, кг</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Потери на производстве, кг</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Примечание</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="Materials/row"/>

        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>150</HorizontalResolution>
            <VerticalResolution>150</VerticalResolution>
          </Print>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>13</ActiveRow>
              <ActiveCol>5</ActiveCol>
              <RangeSelection>R14C6:R15C6</RangeSelection>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="Materials/row">
    <Row>
      <Cell ss:MergeAcross="7" ss:StyleID="s20">
        <Data ss:Type="String">
          <xsl:value-of select="@MaterialName"/>
        </Data>
      </Cell>
    </Row>
    <Row>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@Saldo"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@Requested"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@Arrived"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@Used"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@Shipped"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s18" ss:Formula="=RC[-5]+RC[-3]-RC[-1]">
        <Data ss:Type="Number">40</Data>
      </Cell>
      <Cell ss:StyleID="s18" ss:Formula="=RC[-3]-RC[-2]">
        <Data ss:Type="Number">5</Data>
      </Cell>
      <Cell ss:StyleID="s17"/>
    </Row>
  </xsl:template>
</xsl:stylesheet>
