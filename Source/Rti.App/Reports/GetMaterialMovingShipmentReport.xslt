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
          <Alignment ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s18">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s19">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s20">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s21">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:Index="4" ss:AutoFitWidth="0" ss:Width="78.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="54.75"/>
          <Column ss:Index="7" ss:AutoFitWidth="0" ss:Width="46.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="51"/>
          <Row>
            <Cell ss:MergeAcross="7" ss:StyleID="s21">
              <Data ss:Type="String">
                Учет материалов (по накладной) <xsl:value-of select="Report/@StartDate"/> - <xsl:value-of select="Report/@EndDate"/>
              </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row ss:Height="60">
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Артикул</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Группа</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Чертеж</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Наименование</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">№ накладной</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Кол-во</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Масса по чертежу 1 шт, кг</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Масса отгруженного, кг</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="Materials/Material"/>

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
              <ActiveRow>21</ActiveRow>
              <ActiveCol>3</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="Materials/Material">
    <Row/>
    <Row>
      <Cell ss:MergeAcross="7" ss:StyleID="s21">
        <Data ss:Type="String">
          <xsl:value-of select="@MaterialName"/>
        </Data>
      </Cell>
    </Row>

    <xsl:apply-templates select="row"/>

    <Row>
      <Cell ss:Index="7" ss:StyleID="s20">
        <Data ss:Type="String">Итого </Data>
      </Cell>
      <Cell ss:StyleID="s20" ss:Formula="=SUM(R[-{count(row)}]C:R[-1]C)">
        <Data ss:Type="Number">0.7</Data>
      </Cell>
    </Row>
  </xsl:template>

  <xsl:template match="row">
    <Row>
      <Cell ss:StyleID="s19">
        <Data ss:Type="Number">
          <xsl:value-of select="@Articul"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s19">
        <Data ss:Type="String">
          <xsl:value-of select="@GroupName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s19">
        <Data ss:Type="String">
          <xsl:value-of select="@DrawingName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s19">
        <Data ss:Type="String">
          <xsl:value-of select="@DetailName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s19">
        <Data ss:Type="Number">
          <xsl:value-of select="@DocNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s19">
        <Data ss:Type="Number">
          <xsl:value-of select="@Count"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s19">
        <Data ss:Type="Number">
          <xsl:value-of select="@Mass"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s19" ss:Formula="=RC[-1]*RC[-2]">
        <Data ss:Type="Number">0.2</Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
