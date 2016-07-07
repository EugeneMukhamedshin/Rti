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
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
        </Style>
        <Style ss:ID="s17">
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
        <Style ss:ID="s18">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s21">
          <Borders/>
        </Style>
        <Style ss:ID="s22">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
          <Interior/>
        </Style>
        <Style ss:ID="s23">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s24">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s25">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:Index="3" ss:AutoFitWidth="0" ss:Width="80.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="63.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="72"/>
          <Column ss:AutoFitWidth="0" ss:Width="73.5"/>
          <Row>
            <Cell ss:MergeAcross="5" ss:StyleID="s25">
              <Data ss:Type="String">
                Учет переработанного материала <xsl:value-of select="rti:FormatDateTime(Report/@StartDate, 'dd.MM.yyyy')"/> - <xsl:value-of select="rti:FormatDateTime(Report/@EndDate, 'dd.MM.yyyy')"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:Index="3" ss:Height="45">
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">Чертеж</Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">Группа </Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">Наименование</Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">Выполнено деталей</Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">Партия</Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">Использовано материала, кг.</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
          </Row>

          <xsl:apply-templates select="Materials/Material" />

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
            <HorizontalResolution>-3</HorizontalResolution>
            <VerticalResolution>-3</VerticalResolution>
          </Print>
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

  <xsl:template match="Materials/Material">
    <Row>
      <Cell ss:MergeAcross="5" ss:StyleID="s24">
        <Data ss:Type="String">Материал : <xsl:value-of select="@MaterialName"/></Data>
      </Cell>
    </Row>

    <xsl:apply-templates select="row" />

    <Row>
      <Cell ss:StyleID="s21"/>
      <Cell ss:StyleID="s21"/>
      <Cell ss:StyleID="s21"/>
      <Cell ss:StyleID="s21"/>
      <Cell ss:StyleID="s22">
        <Data ss:Type="String">Итого</Data>
      </Cell>
      <Cell ss:StyleID="s23" ss:Formula="=SUM(R[-{count(row)}]C:R[-1]C)">
        <Data ss:Type="Number">1.9</Data>
      </Cell>
    </Row>

  </xsl:template>

  <xsl:template match="row">
    <Row>
      <Cell ss:StyleID="s18">
        <Data ss:Type="String">
          <xsl:value-of select="@DrawingName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s18">
        <Data ss:Type="String">
          <xsl:value-of select="@GroupName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s18">
        <Data ss:Type="String">
          <xsl:value-of select="@DetailName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s18">
        <Data ss:Type="Number">
          <xsl:value-of select="@DoneCount"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s18">
        <Data ss:Type="String">
          <xsl:value-of select="@BatchNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s18">
        <Data ss:Type="Number">
          <xsl:value-of select="@UsedMaterial"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
