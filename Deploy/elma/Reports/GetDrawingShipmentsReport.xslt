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
        <Style ss:ID="m9856320">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="12"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="m9855728">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="12"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s94">
          <Borders/>
        </Style>
        <Style ss:ID="s95">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s96">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
        </Style>
        <Style ss:ID="s107">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders/>
        </Style>
        <Style ss:ID="s148">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="12"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s153">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders/>
        </Style>
        <Style ss:ID="s168">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s169">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s1690">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Interior ss:Color="#C6E0B4" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s1691">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Interior ss:Color="#FFC000" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s170">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s172">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s176">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s178">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s182">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s185">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="12"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s186">
          <Alignment ss:Horizontal="Center" ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="12"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s187">
          <Alignment ss:Vertical="Top" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="12"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s189">
          <Alignment ss:Horizontal="Left" ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s190">
          <Alignment ss:Vertical="Top"/>
          <Borders>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s191">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s194">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s196">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="14"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="11.25"/>
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="120"/>
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="150"/>
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="22.5"/>
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="61.5"/>
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="132.75"/>
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="63.75"/>
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="41.25"/>
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="56.25"/>
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="22.5"/>
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="55.5"/>
          <Column ss:Index="13" ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="54"/>
          <Column ss:StyleID="s94" ss:AutoFitWidth="0" ss:Width="10.5"/>
          <Row ss:Height="18.75">
            <Cell ss:Index="2" ss:MergeAcross="8" ss:StyleID="s196">
              <Data ss:Type="String">
                Заказы и отгрузка по чертежу <xsl:value-of select="rti:FormatDateTime(Report/@StartDate, 'dd.MM.yyyy')"/> - <xsl:value-of select="rti:FormatDateTime(Report/@EndDate, 'dd.MM.yyyy')"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="6.75"/>
          <Row ss:AutoFitHeight="0" ss:Height="19.5">
            <Cell ss:Index="2" ss:MergeAcross="1" ss:StyleID="s148">
              <Data ss:Type="String">Деталь</Data>
            </Cell>
            <Cell ss:MergeAcross="4" ss:StyleID="s148">
              <Data ss:Type="String">Заявка</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m9855728">
              <Data ss:Type="String">Кол-во изготовл.</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s148">
              <Data ss:Type="String">Отгрузка</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="m9856320">
              <Data ss:Type="String">Разница</Data>
            </Cell>
            <Cell ss:StyleID="s95">
            </Cell>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="18.75">
            <Cell ss:Index="2" ss:StyleID="s185">
              <Data ss:Type="String">Чертеж</Data>
            </Cell>
            <Cell ss:StyleID="s185">
              <Data ss:Type="String">Наименование детали</Data>
            </Cell>
            <Cell ss:StyleID="s186">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:StyleID="s186">
              <Data ss:Type="String">Дата</Data>
            </Cell>
            <Cell ss:StyleID="s186">
              <Data ss:Type="String">Заказчик</Data>
            </Cell>
            <Cell ss:StyleID="s185">
              <Data ss:Type="String">Статус</Data>
            </Cell>
            <Cell ss:StyleID="s187">
              <Data ss:Type="String">Кол-во</Data>
            </Cell>
            <Cell ss:Index="10" ss:StyleID="s186">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:StyleID="s186">
              <Data ss:Type="String">Дата</Data>
            </Cell>
            <Cell ss:StyleID="s186">
              <Data ss:Type="String">Кол-во</Data>
            </Cell>
            <Cell ss:Index="14" ss:StyleID="s95">
            </Cell>
          </Row>

          <xsl:apply-templates select="Drawings/Drawing" />

          <Row ss:AutoFitHeight="0" ss:Height="6.75">
            <Cell ss:Index="2" ss:MergeAcross="11" ss:StyleID="s194">
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3" x:Data="Страница  &amp;P из &amp;N"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <Scale>52</Scale>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>-3</HorizontalResolution>
            <VerticalResolution>-3</VerticalResolution>
          </Print>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>24</ActiveRow>
              <ActiveCol>5</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="Drawings/Drawing">

    <xsl:apply-templates select="RequestDetails/RequestDetail" />

  </xsl:template>

  <xsl:template match="RequestDetails/RequestDetail">

    <xsl:apply-templates select="Shipments/Shipment" />

  </xsl:template>

  <xsl:template match="Shipments/Shipment">

    <Row ss:AutoFitHeight="0" ss:Height="16.5">
      <xsl:choose>
        <xsl:when test="count(../../preceding-sibling::RequestDetail) = 0 and position() = 1">
          <Cell ss:Index="2" ss:StyleID="s176">
            <Data ss:Type="String">
              <xsl:value-of select="../../../../@GroupName"/>.<xsl:value-of select="../../../../@DrawingName"/>
            </Data>
          </Cell>
          <Cell ss:StyleID="s189">
            <Data ss:Type="String">
              <xsl:value-of select="../../../../@DetailName"/>
            </Data>
          </Cell>
        </xsl:when>
        <xsl:otherwise>
          <Cell ss:Index="2" ss:StyleID="s178">
          </Cell>
          <Cell ss:StyleID="s190">
          </Cell>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="position() = 1">
          <Cell ss:StyleID="s168">
            <Data ss:Type="Number">
              <xsl:value-of select="../../@RequestNumber"/>
            </Data>
          </Cell>
          <Cell ss:StyleID="s168">
            <Data ss:Type="String">
              <xsl:value-of select="rti:FormatDateTime(../../@RequestRegDate, 'dd.MM.yyyy')"/>
            </Data>
          </Cell>
          <Cell ss:StyleID="s169">
            <Data ss:Type="String">
              <xsl:value-of select="../../@CustomerName"/>
            </Data>
          </Cell>
          <xsl:choose>
            <xsl:when test="@Status = 'выполнено'">
              <Cell ss:StyleID="s1690">
                <Data ss:Type="String">
                  <xsl:value-of select="@Status"/>
                </Data>
              </Cell>
            </xsl:when>
            <xsl:when test="@Status = 'не выполнено'">
              <Cell ss:StyleID="s1691">
                <Data ss:Type="String">
                  <xsl:value-of select="@Status"/>
                </Data>
              </Cell>
            </xsl:when>
            <xsl:otherwise>
              <Cell ss:StyleID="s169">
                <Data ss:Type="String">
                  <xsl:value-of select="@Status"/>
                </Data>
              </Cell>
            </xsl:otherwise>
          </xsl:choose>
          <Cell ss:StyleID="s170">
            <Data ss:Type="Number">
              <xsl:value-of select="../../@RequestCount"/>
            </Data>
          </Cell>
          <Cell ss:StyleID="s191">
            <Data ss:Type="Number">
              <xsl:value-of select="../../@DoneCount"/>
            </Data>
          </Cell>
        </xsl:when>
        <xsl:otherwise>
          <Cell ss:StyleID="s96">
          </Cell>
          <Cell ss:StyleID="s96">
          </Cell>
          <Cell ss:StyleID="s96">
          </Cell>
          <Cell ss:StyleID="s96">
          </Cell>
          <Cell ss:StyleID="s182">
          </Cell>
          <Cell ss:StyleID="s182">
          </Cell>
        </xsl:otherwise>
      </xsl:choose>
      <Cell ss:StyleID="s168">
        <Data ss:Type="Number">
          <xsl:value-of select="@ShipmentNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s169">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@ShipmentDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s170">
        <Data ss:Type="Number">
          <xsl:value-of select="@ShipmentCount"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s191">
        <Data ss:Type="Number">
          <xsl:value-of select="@RemainedCount"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s96">
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
