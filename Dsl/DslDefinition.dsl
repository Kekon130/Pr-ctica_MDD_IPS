<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="3a3d7bf7-45b1-43f5-b393-1251bb5ae3b3" Description="Description for Laigio.SGCJLPSPG_Weber.SGCJLPSPG_Weber" Name="SGCJLPSPG_Weber" DisplayName="SGCJLPSPG_Weber" Namespace="Laigio.SGCJLPSPG_Weber" ProductName="SGCJLPSPG_Weber" CompanyName="Laigio" PackageGuid="132debac-0e62-4baa-8583-1d11e894368a" PackageNamespace="Laigio.SGCJLPSPG_Weber" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="0fac219f-ac36-4800-b75c-7acdb00bf406" Description="The root in which all other elements are embedded. Appears as a diagram." Name="ExampleModel" DisplayName="Example Model" Namespace="Laigio.SGCJLPSPG_Weber">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="ExampleElement" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ExampleModelHasElements.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="7bcec491-7b4a-4834-a295-5deaeed583b1" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="ExampleElement" DisplayName="Example Element" Namespace="Laigio.SGCJLPSPG_Weber">
      <Properties>
        <DomainProperty Id="bfa7941e-135c-4b52-a7f4-4aa41a19b6ae" Description="Description for Laigio.SGCJLPSPG_Weber.ExampleElement.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="4b6dc5d9-768a-4fb7-9790-0e0dd7918018" Description="Embedding relationship between the Model and Elements" Name="ExampleModelHasElements" DisplayName="Example Model Has Elements" Namespace="Laigio.SGCJLPSPG_Weber" IsEmbedding="true">
      <Source>
        <DomainRole Id="af8b22cd-0a00-4c89-a608-45fab68e5f89" Description="" Name="ExampleModel" DisplayName="Example Model" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="42d0480d-f730-49d1-9769-2877d5093bb5" Description="" Name="Element" DisplayName="Element" PropertyName="ExampleModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Example Model">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="83024976-6c6e-4fc7-acd0-3312eea8e408" Description="Reference relationship between Elements." Name="ExampleElementReferencesTargets" DisplayName="Example Element References Targets" Namespace="Laigio.SGCJLPSPG_Weber">
      <Source>
        <DomainRole Id="184e4690-9830-410e-ac3f-04feb64db071" Description="Description for Laigio.SGCJLPSPG_Weber.ExampleRelationship.Target" Name="Source" DisplayName="Source" PropertyName="Targets" PropertyDisplayName="Targets">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="63cadbe9-61e9-4201-bd8e-5b25e5c67613" Description="Description for Laigio.SGCJLPSPG_Weber.ExampleRelationship.Source" Name="Target" DisplayName="Target" PropertyName="Sources" PropertyDisplayName="Sources">
          <RolePlayer>
            <DomainClassMoniker Name="ExampleElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <GeometryShape Id="a356b995-9aa2-4d1d-9387-9f50f4a94749" Description="Shape used to represent ExampleElements on a Diagram." Name="ExampleShape" DisplayName="Example Shape" Namespace="Laigio.SGCJLPSPG_Weber" FixedTooltipText="Example Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="51c2ce38-41e4-426c-8800-bfa917bed651" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ExampleConnector" DisplayName="Example Connector" Namespace="Laigio.SGCJLPSPG_Weber" FixedTooltipText="Example Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
  </Connectors>
  <XmlSerializationBehavior Name="SGCJLPSPG_WeberSerializationBehavior" Namespace="Laigio.SGCJLPSPG_Weber">
    <ClassData>
      <XmlClassData TypeName="ExampleModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelMoniker" ElementName="exampleModel" MonikerTypeName="ExampleModelMoniker">
        <DomainClassMoniker Name="ExampleModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="ExampleModelHasElements" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleElement" MonikerAttributeName="name" SerializeId="true" MonikerElementName="exampleElementMoniker" ElementName="exampleElement" MonikerTypeName="ExampleElementMoniker">
        <DomainClassMoniker Name="ExampleElement" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="ExampleElement/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="targets">
            <DomainRelationshipMoniker Name="ExampleElementReferencesTargets" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ExampleModelHasElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleModelHasElementsMoniker" ElementName="exampleModelHasElements" MonikerTypeName="ExampleModelHasElementsMoniker">
        <DomainRelationshipMoniker Name="ExampleModelHasElements" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleElementReferencesTargets" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleElementReferencesTargetsMoniker" ElementName="exampleElementReferencesTargets" MonikerTypeName="ExampleElementReferencesTargetsMoniker">
        <DomainRelationshipMoniker Name="ExampleElementReferencesTargets" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleShapeMoniker" ElementName="exampleShape" MonikerTypeName="ExampleShapeMoniker">
        <GeometryShapeMoniker Name="ExampleShape" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleConnectorMoniker" ElementName="exampleConnector" MonikerTypeName="ExampleConnectorMoniker">
        <ConnectorMoniker Name="ExampleConnector" />
      </XmlClassData>
      <XmlClassData TypeName="SGCJLPSPG_WeberDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="sGCJLPSPG_WeberDiagramMoniker" ElementName="sGCJLPSPG_WeberDiagram" MonikerTypeName="SGCJLPSPG_WeberDiagramMoniker">
        <DiagramMoniker Name="SGCJLPSPG_WeberDiagram" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="SGCJLPSPG_WeberExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="ExampleElementReferencesTargetsBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ExampleElementReferencesTargets" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ExampleElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ExampleElement" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="b14ff042-1b79-406d-ad21-4fad7e158656" Description="Description for Laigio.SGCJLPSPG_Weber.SGCJLPSPG_WeberDiagram" Name="SGCJLPSPG_WeberDiagram" DisplayName="Minimal Language Diagram" Namespace="Laigio.SGCJLPSPG_Weber">
    <Class>
      <DomainClassMoniker Name="ExampleModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="ExampleElement" />
        <ParentElementPath>
          <DomainPath>ExampleModelHasElements.ExampleModel/!ExampleModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ExampleElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="ExampleShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ExampleConnector" />
        <DomainRelationshipMoniker Name="ExampleElementReferencesTargets" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="SGCJLPSPG_DSLWeber" EditorGuid="6db1156a-f712-446b-b07e-8a86ffb3f851">
    <RootClass>
      <DomainClassMoniker Name="ExampleModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="SGCJLPSPG_WeberSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="SGCJLPSPG_Weber">
      <ElementTool Name="ExampleElement" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="ExampleElement" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="ExampleElement" />
      </ElementTool>
      <ConnectionTool Name="ExampleRelationship" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="ExampleRelationship" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="SGCJLPSPG_Weber/ExampleElementReferencesTargetsBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="SGCJLPSPG_WeberDiagram" />
  </Designer>
  <Explorer ExplorerGuid="03454d1a-e7ca-45d2-8fec-9e5df12c7013" Title="SGCJLPSPG_Weber Explorer">
    <ExplorerBehaviorMoniker Name="SGCJLPSPG_Weber/SGCJLPSPG_WeberExplorer" />
  </Explorer>
</Dsl>