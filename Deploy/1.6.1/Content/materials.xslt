<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns="urn:schemas-microsoft-com:office:spreadsheet"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:o="urn:schemas-microsoft-com:office:office"
	xmlns:x="urn:schemas-microsoft-com:office:excel"
	xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
	xmlns:html="http://www.w3.org/TR/REC-html40"
								xmlns:retail="urn:retail">

  <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="no"/>

  <xsl:template match="root">

    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Excel.Sheet"</xsl:text>
    </xsl:processing-instruction>

    <Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
 xmlns:o="urn:schemas-microsoft-com:office:office"
 xmlns:x="urn:schemas-microsoft-com:office:excel"
 xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
 xmlns:html="http://www.w3.org/TR/REC-html40">
      <DocumentProperties xmlns="urn:schemas-microsoft-com:office:office">
        <Author>Мухамедшин</Author>
        <LastAuthor>Мухамедшин</LastAuthor>
        <Created>2016-05-13T15:14:53Z</Created>
        <Version>14.00</Version>
      </DocumentProperties>
      <OfficeDocumentSettings xmlns="urn:schemas-microsoft-com:office:office">
        <AllowPNG/>
      </OfficeDocumentSettings>
      <ExcelWorkbook xmlns="urn:schemas-microsoft-com:office:excel">
        <WindowHeight>12585</WindowHeight>
        <WindowWidth>27795</WindowWidth>
        <WindowTopX>480</WindowTopX>
        <WindowTopY>120</WindowTopY>
        <Calculation>ManualCalculation</Calculation>
        <DoNotCalculateBeforeSave/>
        <ProtectStructure>False</ProtectStructure>
        <ProtectWindows>False</ProtectWindows>
        <Uncalced/>
      </ExcelWorkbook>
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
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table ss:ExpandedColumnCount="2" ss:ExpandedRowCount="2" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
          <Row>
            <Cell>
              <Data ss:Type="String">Id</Data>
            </Cell>
            <Cell>
              <Data ss:Type="String">Name</Data>
            </Cell>
          </Row>
          <xsl:apply-templates select="set[@name='Materials']/row" />
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>1</ActiveRow>
              <ActiveCol>1</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="set[@name='Materials']/row">
    <xsl:call-template name = "MaterialRow"/>
  </xsl:template>

  <xsl:template name="MaterialRow">
    <Row>
      <Cell>
        <Data ss:Type="Number">
          <xsl:value-of select="Id"/>
        </Data>
      </Cell>
      <Cell>
        <Data ss:Type="String">
          <xsl:value-of select="Name"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>