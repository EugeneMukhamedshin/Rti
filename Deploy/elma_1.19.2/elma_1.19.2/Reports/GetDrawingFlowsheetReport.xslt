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
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
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
        <Style ss:ID="s19">
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
        <Style ss:ID="s20">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s22">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s23">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s24">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s25">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s26">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
        </Style>
        <Style ss:ID="s27">
          <Borders/>
        </Style>
        <Style ss:ID="s28">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="138.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="153"/>
          <Column ss:AutoFitWidth="0" ss:Width="111"/>
          <Column ss:AutoFitWidth="0" ss:Width="102.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="85.5"/>
          <Row>
            <Cell ss:MergeAcross="6" ss:StyleID="s28">
              <Data ss:Type="String">Технологическая карта (ТК)</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Заказчик</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Наименование</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">№ детали</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Вторичный заказчик</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s22">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/Customer/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/Detail/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/Group/@Name"/>
                <xsl:value-of select="Drawing/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/SecondaryCustomer/@Name"/>
              </Data>
            </Cell>
          </Row>
          <Row/>
          <Row ss:AutoFitHeight="0" ss:Height="29.25">
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Перечень оборудования, инв. №</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Температура плит, град.</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Время вулканизации мин.</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="Machines/Machine"/>

          <Row/>
          <Row ss:AutoFitHeight="0" ss:Height="15.75">
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Оснастка</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Количество форм</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Гнездность</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Выход партии, шт.</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s22">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/Equipment/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">
                <xsl:value-of select="Drawing/Equipment/@FormCount"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">
                <xsl:value-of select="Drawing/Equipment/@SlotCount"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">
                <xsl:value-of select="Drawing/Equipment/@Output"/>
              </Data>
            </Cell>
          </Row>
          <Row/>
          <Row ss:AutoFitHeight="0" ss:Height="42">
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Марка материала по чертежу</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">ТУ (ГОСТ)</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Марка материала фактическая</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">ТУ (ГОСТ)</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Масса заготовки, кг.</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Масса по чертежу, кг.</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Масса фактическая, кг.</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row>
            <Cell ss:StyleID="s22">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/MaterialByPassport/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/MaterialByPassport/@TechConditions"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/Material/@Name"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/Material/@TechConditions"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">
                <xsl:value-of select="Drawing/@MassWithShruff"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">
                <xsl:value-of select="Drawing/MassCalculation/@CalculatedMass"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">
                <xsl:value-of select="Drawing/@FactMass"/>
              </Data>
            </Cell>
          </Row>
          <Row/>
          <Row ss:AutoFitHeight="0" ss:Height="13.5">
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Нормирование времени</Data>
            </Cell>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
            <Cell ss:StyleID="s18"/>
          </Row>
          <Row ss:AutoFitHeight="0" ss:Height="27.75">
            <Cell ss:StyleID="s20">
              <Data ss:Type="String">Наименование процесса</Data>
            </Cell>
            <Cell ss:StyleID="s20">
              <Data ss:Type="String">Выполняемая операция</Data>
            </Cell>
            <Cell ss:StyleID="s20">
              <Data ss:Type="String">Исполнитель</Data>
            </Cell>
            <Cell ss:StyleID="s20">
              <Data ss:Type="String">t</Data>
            </Cell>
            <Cell ss:StyleID="s20">
              <Data ss:Type="String">Время по норме, мин.</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s17">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:StyleID="s17">
              <Data ss:Type="Number">5</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="Processes/Process"/>

          <Row>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Общее время, мин.</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s23">
              <Data ss:Type="String">tоб</Data>
            </Cell>
            <Cell ss:StyleID="s19" ss:Formula="=SUM(R[-{count(Processes/Process)}]C:R[-1]C)">
              <Data ss:Type="Number">4</Data>
            </Cell>
          </Row>

          <Row>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Примечание</Data>
            </Cell>
            <Cell ss:StyleID="s24">
              <Data ss:Type="String">
                <xsl:value-of select="Drawing/@TechNote"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s25"/>
            <Cell ss:StyleID="s25"/>
            <Cell ss:StyleID="s25"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s27"/>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3" x:Data="Страница  &amp;P из &amp;N"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>-3</HorizontalResolution>
            <VerticalResolution>-3</VerticalResolution>
          </Print>
          <Selected/>
          <TopRowVisible>3</TopRowVisible>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>33</ActiveRow>
              <ActiveCol>4</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="Machines/Machine">
    <Row>
      <Cell ss:StyleID="s22">
        <Data ss:Type="Number">
          <xsl:value-of select="Machine/@InvNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s22">
        <Data ss:Type="Number">
          <xsl:value-of select="@PlateTemperature"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s22">
        <Data ss:Type="Number">
          <xsl:value-of select="@CureTime"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

  <xsl:template match="Processes/Process">
    <Row ss:AutoFitHeight="0" ss:Height="14.25">
      <Cell ss:StyleID="s23">
        <Data ss:Type="String">
          <xsl:value-of select="@DisplayName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s23">
        <Data ss:Type="String">
          <xsl:value-of select="@DisplayOperation"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s23">
        <Data ss:Type="String">
          <xsl:value-of select="@DisplayExecutor"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s23">
        <Data ss:Type="String">
          <xsl:value-of select="@DisplayVarName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s23">
        <Data ss:Type="Number">
          <xsl:value-of select="@DisplayNormTime"/>
        </Data>
      </Cell>
    </Row>

  </xsl:template>

</xsl:stylesheet>
