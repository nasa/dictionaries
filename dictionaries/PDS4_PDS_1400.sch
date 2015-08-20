<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:pds  Version:1.4.0.0 - Tue Mar 31 10:42:45 PDT 2015 -->
  <!-- Generated from the PDS4 Information Model Version 1.4.0.0 - System Build 5b -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="/*">
      <sch:assert test="name() = ('Product_Attribute_Definition','Product_Browse', 'Product_Bundle', 'Product_Class_Definition',  'Product_Collection', 'Product_Context', 'Product_Document', 'Product_File_Repository', 'Product_File_Text', 'Product_Observational', 'Product_Service', 'Product_Native', 'Product_Software', 'Product_SPICE_Kernel', 'Product_Thumbnail', 'Product_Update', 'Product_XML_Schema', 'Product_Zipped', 'Product_Data_Set_PDS3', 'Product_Instrument_Host_PDS3', 'Product_Instrument_PDS3','Product_Mission_PDS3', 'Product_Proxy_PDS3', 'Product_Subscription_PDS3', 'Product_Target_PDS3', 'Product_Volume_PDS3', 'Product_Volume_Set_PDS3', 'Product_AIP', 'Product_DIP', 'Product_SIP', 'Product_SIP_Deep_Archive', 'Product_DIP_Deep_Archive', 'Ingest_LDD')">
        The ROOT element must be one of the allowed types.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="/*[not(contains(name(), 'Ingest') or contains(name(), 'Bundle') or contains(name(), 'Collection'))]/pds:Identification_Area/pds:logical_identifier">
      <sch:assert test="string-length(.) - string-length(translate(., ':', '')) eq 5">
        pds:logical_identifier must have the form "urn:nasa:pds:bundleID:collectionID:productID"/>).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:ASCII_Date" role="warning">
      <sch:assert test="false()">
        pds:ASCII_Date is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:ASCII_Date_Time" role="warning">
      <sch:assert test="false()">
        pds:ASCII_Date_Time is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:ASCII_Date_Time_UTC" role="warning">
      <sch:assert test="false()">
        pds:ASCII_Date_Time_UTC is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Agency/pds:name">
      <sch:assert test=". = ('European Space Agency', 'National Aeronautics and Space Administration')">
        The attribute pds:name must be equal to one of the following values 'European Space Agency', 'National Aeronautics and Space Administration'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array/pds:axis_index_order">
      <sch:assert test=". = ('Last Index Fastest')">
        The attribute pds:axis_index_order must be equal to the value 'Last Index Fastest'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array/pds:offset">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_1D" role="warning">
      <sch:assert test="false()">
        pds:Array_1D is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_1D/pds:axes">
      <sch:assert test=". = ('1')">
        The attribute pds:axes must be equal to the value '1'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_1D/pds:axis_index_order">
      <sch:assert test=". = ('Last Index Fastest')">
        The attribute pds:axis_index_order must be equal to the value 'Last Index Fastest'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_2D/pds:axes">
      <sch:assert test=". = ('2')">
        The attribute pds:axes must be equal to the value '2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_2D/pds:axis_index_order">
      <sch:assert test=". = ('Last Index Fastest')">
        The attribute pds:axis_index_order must be equal to the value 'Last Index Fastest'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_2D_Image">
      <sch:assert test="pds:Axis_Array[1]/pds:axis_name = ('Line') and pds:Axis_Array[2]/pds:axis_name = ('Sample') or pds:Axis_Array[1]/pds:axis_name = ('Sample') and pds:Axis_Array[2]/pds:axis_name = ('Line')">
        The names of the first and second axis of an Array_2D_Image must be set to Line and Sample.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_2D_Image/pds:Axis_Array[1]">
      <sch:assert test="pds:axis_name = ('Line', 'Sample')">
        The name of the first axis of an Array_2D_Image must be set to either Line or Sample.</sch:assert>
      <sch:assert test="pds:sequence_number eq '1'">
        The sequence number of the first axis of an Array_2D_Image must be set to 1.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_2D_Image/pds:Axis_Array[2]">
      <sch:assert test="pds:axis_name = ('Line', 'Sample')">
        The name of the second axis of an Array_2D_Image must be set to either Line or Sample.</sch:assert>
      <sch:assert test="pds:sequence_number eq '2'">
        The sequence number of the second axis of an Array_2D_Image must be set to 2.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_2D_Image/pds:axes">
      <sch:assert test=". = ('2')">
        The attribute pds:axes must be equal to the value '2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_2D_Image/pds:axis_index_order">
      <sch:assert test=". = ('Last Index Fastest')">
        The attribute pds:axis_index_order must be equal to the value 'Last Index Fastest'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_2D_Map/pds:axes">
      <sch:assert test=". = ('2')">
        The attribute pds:axes must be equal to the value '2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_2D_Map/pds:axis_index_order">
      <sch:assert test=". = ('Last Index Fastest')">
        The attribute pds:axis_index_order must be equal to the value 'Last Index Fastest'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_2D_Spectrum/pds:axes">
      <sch:assert test=". = ('2')">
        The attribute pds:axes must be equal to the value '2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_2D_Spectrum/pds:axis_index_order">
      <sch:assert test=". = ('Last Index Fastest')">
        The attribute pds:axis_index_order must be equal to the value 'Last Index Fastest'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_3D/pds:axes">
      <sch:assert test=". = ('3')">
        The attribute pds:axes must be equal to the value '3'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_3D/pds:axis_index_order">
      <sch:assert test=". = ('Last Index Fastest')">
        The attribute pds:axis_index_order must be equal to the value 'Last Index Fastest'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_3D_Image/pds:axes">
      <sch:assert test=". = ('3')">
        The attribute pds:axes must be equal to the value '3'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_3D_Image/pds:axis_index_order">
      <sch:assert test=". = ('Last Index Fastest')">
        The attribute pds:axis_index_order must be equal to the value 'Last Index Fastest'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_3D_Movie/pds:axes">
      <sch:assert test=". = ('3')">
        The attribute pds:axes must be equal to the value '3'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_3D_Movie/pds:axis_index_order">
      <sch:assert test=". = ('Last Index Fastest')">
        The attribute pds:axis_index_order must be equal to the value 'Last Index Fastest'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_3D_Spectrum/pds:axes">
      <sch:assert test=". = ('3')">
        The attribute pds:axes must be equal to the value '3'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Array_3D_Spectrum/pds:axis_index_order">
      <sch:assert test=". = ('Last Index Fastest')">
        The attribute pds:axis_index_order must be equal to the value 'Last Index Fastest'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Axis_Array/pds:unit" role="warning">
      <sch:assert test="false()">
        pds:Axis_Array/pds:unit is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Band_Bin" role="warning">
      <sch:assert test="false()">
        pds:Band_Bin is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Band_Bin/pds:band_width">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Band_Bin/pds:center_wavelength">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Band_Bin_Set" role="warning">
      <sch:assert test="false()">
        pds:Band_Bin_Set is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Bundle/pds:bundle_type">
      <sch:assert test=". = ('Archive', 'Supplemental')">
        The attribute pds:bundle_type must be equal to one of the following values 'Archive', 'Supplemental'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Bundle_Member_Entry">
      <sch:let name="lid_num_colons" value="string-length(pds:lid_reference) - string-length(translate(pds:lid_reference, ':', ''))"/>
      <sch:let name="lidvid_num_colons" value="string-length(pds:lidvid_reference) - string-length(translate(pds:lidvid_reference, ':', ''))"/>
      <sch:let name="lid_required_colons" value="4"/>
      <sch:let name="lidvid_required_colons" value="6"/>
      <sch:assert test="if (pds:lid_reference) then ($lid_num_colons eq $lid_required_colons) else true()">
        The number of colons found in lid_reference: (<sch:value-of select="$lid_num_colons"/>) is inconsistent with the number expected: <sch:value-of select="$lid_required_colons"/>.</sch:assert>
      <sch:assert test="if (pds:lidvid_reference) then ($lidvid_num_colons eq $lidvid_required_colons) else true()">
        The number of colons found in lidvid_reference: (<sch:value-of select="$lidvid_num_colons"/>) is inconsistent with the number expected: <sch:value-of select="$lidvid_required_colons"/>.</sch:assert>
      <sch:assert test="if (pds:lid_reference) then starts-with(pds:lid_reference,'urn:nasa:pds:') else true()">
        The value of the attribute lid_reference must start with 'urn:nasa:pds:'</sch:assert>
      <sch:assert test="if (pds:lidvid_reference) then starts-with(pds:lidvid_reference,'urn:nasa:pds:') else true()">
        The value of the attribute lidvid_reference must start with 'urn:nasa:pds:'</sch:assert>
      <sch:assert test="if (pds:lid_reference) then not(contains(pds:lid_reference,'::')) else true()">
        The value of the attribute lid_reference must not include a value that contains '::' followed by version id</sch:assert>
      <sch:assert test="if (pds:lidvid_reference) then contains(pds:lidvid_reference,'::') else true()">
        The value of the attribute lidvid_reference must include a value that contains '::' followed by version id</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Bundle_Member_Entry/pds:member_status">
      <sch:assert test=". = ('Primary', 'Secondary')">
        The attribute pds:member_status must be equal to one of the following values 'Primary', 'Secondary'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Bundle_Member_Entry/pds:reference_type">
      <sch:assert test=". = ('bundle_has_browse_collection', 'bundle_has_calibration_collection', 'bundle_has_context_collection', 'bundle_has_data_collection', 'bundle_has_document_collection', 'bundle_has_geometry_collection', 'bundle_has_member_collection', 'bundle_has_schema_collection', 'bundle_has_spice_kernel_collection')">
        The attribute pds:reference_type must be equal to one of the following values 'bundle_has_browse_collection', 'bundle_has_calibration_collection', 'bundle_has_context_collection', 'bundle_has_data_collection', 'bundle_has_document_collection', 'bundle_has_geometry_collection', 'bundle_has_member_collection', 'bundle_has_schema_collection', 'bundle_has_spice_kernel_collection'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Checksum_Manifest" role="warning">
      <sch:assert test="pds:record_delimiter != 'carriage-return line-feed'">
        The value carriage-return line-feed for attribute Checksum_Manifest.record_delimiter is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Checksum_Manifest/pds:parsing_standard_id">
      <sch:assert test=". = ('MD5Deep 4.n')">
        The attribute pds:parsing_standard_id must be equal to the value 'MD5Deep 4.n'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Checksum_Manifest/pds:record_delimiter">
      <sch:assert test=". = ('Carriage-Return Line-Feed', 'carriage-return line-feed')">
        The attribute pds:record_delimiter must be equal to one of the following values 'Carriage-Return Line-Feed', 'carriage-return line-feed'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="//pds:Citation_Information/pds:description">
      <sch:assert test="string-length(translate(., ' ', '')) &gt;= 1 and string-length(translate(., ' ','')) &lt;= 5000">
        The description in Citation_Information must be greater than 0 and less than 5000 bytes (not counting spaces).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Collection/pds:collection_type">
      <sch:assert test=". = ('Browse', 'Calibration', 'Context', 'Data', 'Document', 'Geometry', 'Miscellaneous', 'SPICE Kernel', 'XML Schema')">
        The attribute pds:collection_type must be equal to one of the following values 'Browse', 'Calibration', 'Context', 'Data', 'Document', 'Geometry', 'Miscellaneous', 'SPICE Kernel', 'XML Schema'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Association" role="warning">
      <sch:assert test="pds:reference_type != 'subclass_of'">
        The value subclass_of for attribute DD_Association.reference_type is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:reference_type != 'restriction_of'">
        The value restriction_of for attribute DD_Association.reference_type is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:reference_type != 'extension_of'">
        The value extension_of for attribute DD_Association.reference_type is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Association/pds:reference_type">
      <sch:assert test=". = ('attribute_of', 'component_of', 'extension_of', 'parent_of', 'restriction_of', 'subclass_of')">
        The attribute pds:reference_type must be equal to one of the following values 'attribute_of', 'component_of', 'extension_of', 'parent_of', 'restriction_of', 'subclass_of'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Association_External" role="warning">
      <sch:assert test="false()">
        pds:DD_Association_External is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Association_External/pds:reference_type">
      <sch:assert test=". = ('attribute_of', 'component_of', 'extension_of', 'parent_of', 'restriction_of', 'subclass_of')">
        The attribute pds:reference_type must be equal to one of the following values 'attribute_of', 'component_of', 'extension_of', 'parent_of', 'restriction_of', 'subclass_of'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Attribute_Full">
      <sch:assert test="if (pds:nillable_flag) then pds:nillable_flag = ('true', 'false') else true()">
        The attribute pds:nillable_flag must be equal to one of the following values 'true', 'false'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Attribute_Full/pds:attribute_concept">
      <sch:assert test=". = ('Address', 'Angle', 'Attribute', 'Bit', 'Checksum', 'Collection', 'Constant', 'Cosine', 'Count', 'DOI', 'Delimiter', 'Description', 'Deviation', 'Direction', 'Distance', 'Duration', 'Factor', 'Flag', 'Format', 'Group', 'Home', 'ID', 'Latitude', 'Length', 'List', 'Location', 'Logical', 'Longitude', 'Mask', 'Maximum', 'Mean', 'Median', 'Minimum', 'Name', 'Note', 'Number', 'Offset', 'Order', 'Parallel', 'Password', 'Path', 'Pattern', 'Pixel', 'Quaternion', 'Radius', 'Ratio', 'Reference', 'Resolution', 'Role', 'Rotation', 'Scale', 'Sequence', 'Set', 'Size', 'Status', 'Summary', 'Syntax', 'Temperature', 'Text', 'Title', 'Type', 'Unit', 'Unknown', 'Value', 'Vector')">
        The attribute pds:attribute_concept must be equal to one of the following values 'Address', 'Angle', 'Attribute', 'Bit', 'Checksum', 'Collection', 'Constant', 'Cosine', 'Count', 'DOI', 'Delimiter', 'Description', 'Deviation', 'Direction', 'Distance', 'Duration', 'Factor', 'Flag', 'Format', 'Group', 'Home', 'ID', 'Latitude', 'Length', 'List', 'Location', 'Logical', 'Longitude', 'Mask', 'Maximum', 'Mean', 'Median', 'Minimum', 'Name', 'Note', 'Number', 'Offset', 'Order', 'Parallel', 'Password', 'Path', 'Pattern', 'Pixel', 'Quaternion', 'Radius', 'Ratio', 'Reference', 'Resolution', 'Role', 'Rotation', 'Scale', 'Sequence', 'Set', 'Size', 'Status', 'Summary', 'Syntax', 'Temperature', 'Text', 'Title', 'Type', 'Unit', 'Unknown', 'Value', 'Vector'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Attribute_Full/pds:registration_authority_id">
      <sch:assert test=". = ('0001_NASA_PDS_1')">
        The attribute pds:registration_authority_id must be equal to the value '0001_NASA_PDS_1'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Attribute_Full/pds:steward_id">
      <sch:assert test=". = ('atm', 'geo', 'img', 'naif', 'ops', 'pds', 'ppi', 'rings', 'rs', 'sbn')">
        The attribute pds:steward_id must be equal to one of the following values 'atm', 'geo', 'img', 'naif', 'ops', 'pds', 'ppi', 'rings', 'rs', 'sbn'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Attribute_Full/pds:type">
      <sch:assert test=". = ('PDS3', 'PDS4')">
        The attribute pds:type must be equal to one of the following values 'PDS3', 'PDS4'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Class_Full">
      <sch:assert test="if (pds:abstract_flag) then pds:abstract_flag = ('true', 'false') else true()">
        The attribute pds:abstract_flag must be equal to one of the following values 'true', 'false'.</sch:assert>
      <sch:assert test="if (pds:element_flag) then pds:element_flag = ('true', 'false') else true()">
        The attribute pds:element_flag must be equal to one of the following values 'true', 'false'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Class_Full/pds:steward_id">
      <sch:assert test=". = ('atm', 'geo', 'img', 'naif', 'ops', 'pds', 'ppi', 'rings', 'rs', 'sbn')">
        The attribute pds:steward_id must be equal to one of the following values 'atm', 'geo', 'img', 'naif', 'ops', 'pds', 'ppi', 'rings', 'rs', 'sbn'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Class_Full/pds:type">
      <sch:assert test=". = ('PDS3', 'PDS4')">
        The attribute pds:type must be equal to one of the following values 'PDS3', 'PDS4'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Rule_Statement/pds:rule_type">
      <sch:assert test=". = ('Assert', 'Assert Every', 'Assert If', 'Report')">
        The attribute pds:rule_type must be equal to one of the following values 'Assert', 'Assert Every', 'Assert If', 'Report'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Value_Domain">
      <sch:assert test="if (pds:enumeration_flag) then pds:enumeration_flag = ('true', 'false') else true()">
        The attribute pds:enumeration_flag must be equal to one of the following values 'true', 'false'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Value_Domain/pds:unit_of_measure_type">
      <sch:assert test=". = ('Units_of_Acceleration', 'Units_of_Amount_Of_Substance', 'Units_of_Angle', 'Units_of_Angular_Velocity', 'Units_of_Area', 'Units_of_Current', 'Units_of_Frame_Rate', 'Units_of_Frequency', 'Units_of_Length', 'Units_of_Map_Scale', 'Units_of_Mass', 'Units_of_Misc', 'Units_of_None', 'Units_of_Optical_Path_Length', 'Units_of_Pressure', 'Units_of_Radiance', 'Units_of_Rates', 'Units_of_Solid_Angle', 'Units_of_Spectral_Irradiance', 'Units_of_Spectral_Radiance', 'Units_of_Storage', 'Units_of_Temperature', 'Units_of_Time', 'Units_of_Velocity', 'Units_of_Voltage', 'Units_of_Volume', 'Units_of_Wavenumber')">
        The attribute pds:unit_of_measure_type must be equal to one of the following values 'Units_of_Acceleration', 'Units_of_Amount_Of_Substance', 'Units_of_Angle', 'Units_of_Angular_Velocity', 'Units_of_Area', 'Units_of_Current', 'Units_of_Frame_Rate', 'Units_of_Frequency', 'Units_of_Length', 'Units_of_Map_Scale', 'Units_of_Mass', 'Units_of_Misc', 'Units_of_None', 'Units_of_Optical_Path_Length', 'Units_of_Pressure', 'Units_of_Radiance', 'Units_of_Rates', 'Units_of_Solid_Angle', 'Units_of_Spectral_Irradiance', 'Units_of_Spectral_Radiance', 'Units_of_Storage', 'Units_of_Temperature', 'Units_of_Time', 'Units_of_Velocity', 'Units_of_Voltage', 'Units_of_Volume', 'Units_of_Wavenumber'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Value_Domain/pds:value_data_type">
      <sch:assert test=". = ('ASCII_AnyURI', 'ASCII_Boolean', 'ASCII_DOI', 'ASCII_Date_DOY', 'ASCII_Date_Time_DOY', 'ASCII_Date_Time_DOY_UTC', 'ASCII_Date_Time_YMD', 'ASCII_Date_Time_YMD_UTC', 'ASCII_Date_YMD', 'ASCII_Directory_Path_Name', 'ASCII_File_Name', 'ASCII_File_Specification_Name', 'ASCII_Integer', 'ASCII_LID', 'ASCII_LIDVID', 'ASCII_LIDVID_LID', 'ASCII_MD5_Checksum', 'ASCII_NonNegative_Integer', 'ASCII_Numeric_Base16', 'ASCII_Numeric_Base2', 'ASCII_Numeric_Base8', 'ASCII_Real', 'ASCII_Short_String_Collapsed', 'ASCII_Short_String_Preserved', 'ASCII_Text_Collapsed', 'ASCII_Text_Preserved', 'ASCII_Time', 'ASCII_VID', 'UTF8_Short_String_Collapsed', 'UTF8_Short_String_Preserved', 'UTF8_Text_Preserved', 'Vector_Cartesian_3', 'Vector_Cartesian_3_Acceleration', 'Vector_Cartesian_3_Pointing', 'Vector_Cartesian_3_Position', 'Vector_Cartesian_3_Velocity')">
        The attribute pds:value_data_type must be equal to one of the following values 'ASCII_AnyURI', 'ASCII_Boolean', 'ASCII_DOI', 'ASCII_Date_DOY', 'ASCII_Date_Time_DOY', 'ASCII_Date_Time_DOY_UTC', 'ASCII_Date_Time_YMD', 'ASCII_Date_Time_YMD_UTC', 'ASCII_Date_YMD', 'ASCII_Directory_Path_Name', 'ASCII_File_Name', 'ASCII_File_Specification_Name', 'ASCII_Integer', 'ASCII_LID', 'ASCII_LIDVID', 'ASCII_LIDVID_LID', 'ASCII_MD5_Checksum', 'ASCII_NonNegative_Integer', 'ASCII_Numeric_Base16', 'ASCII_Numeric_Base2', 'ASCII_Numeric_Base8', 'ASCII_Real', 'ASCII_Short_String_Collapsed', 'ASCII_Short_String_Preserved', 'ASCII_Text_Collapsed', 'ASCII_Text_Preserved', 'ASCII_Time', 'ASCII_VID', 'UTF8_Short_String_Collapsed', 'UTF8_Short_String_Preserved', 'UTF8_Text_Preserved', 'Vector_Cartesian_3', 'Vector_Cartesian_3_Acceleration', 'Vector_Cartesian_3_Pointing', 'Vector_Cartesian_3_Position', 'Vector_Cartesian_3_Velocity'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Value_Domain_Full">
      <sch:assert test="if (pds:enumeration_flag) then pds:enumeration_flag = ('true', 'false') else true()">
        The attribute pds:enumeration_flag must be equal to one of the following values 'true', 'false'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Value_Domain_Full/pds:conceptual_domain">
      <sch:assert test=". = ('Boolean', 'Integer', 'Name', 'Numeric', 'Real', 'Short_String', 'Text', 'Time', 'Type', 'Unknown')">
        The attribute pds:conceptual_domain must be equal to one of the following values 'Boolean', 'Integer', 'Name', 'Numeric', 'Real', 'Short_String', 'Text', 'Time', 'Type', 'Unknown'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Value_Domain_Full/pds:unit_of_measure_type">
      <sch:assert test=". = ('Units_of_Amount_Of_Substance', 'Units_of_Angle', 'Units_of_Angular_Velocity', 'Units_of_Area', 'Units_of_Current', 'Units_of_Frame_Rate', 'Units_of_Frequency', 'Units_of_Length', 'Units_of_Map_Scale', 'Units_of_Mass', 'Units_of_Misc', 'Units_of_None', 'Units_of_Optical_Path_Length', 'Units_of_Pressure', 'Units_of_Radiance', 'Units_of_Rates', 'Units_of_Solid_Angle', 'Units_of_Spectral_Irradiance', 'Units_of_Spectral_Radiance', 'Units_of_Storage', 'Units_of_Temperature', 'Units_of_Time', 'Units_of_Velocity', 'Units_of_Voltage', 'Units_of_Volume', 'Units_of_Wavenumber')">
        The attribute pds:unit_of_measure_type must be equal to one of the following values 'Units_of_Amount_Of_Substance', 'Units_of_Angle', 'Units_of_Angular_Velocity', 'Units_of_Area', 'Units_of_Current', 'Units_of_Frame_Rate', 'Units_of_Frequency', 'Units_of_Length', 'Units_of_Map_Scale', 'Units_of_Mass', 'Units_of_Misc', 'Units_of_None', 'Units_of_Optical_Path_Length', 'Units_of_Pressure', 'Units_of_Radiance', 'Units_of_Rates', 'Units_of_Solid_Angle', 'Units_of_Spectral_Irradiance', 'Units_of_Spectral_Radiance', 'Units_of_Storage', 'Units_of_Temperature', 'Units_of_Time', 'Units_of_Velocity', 'Units_of_Voltage', 'Units_of_Volume', 'Units_of_Wavenumber'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:DD_Value_Domain_Full/pds:value_data_type">
      <sch:assert test=". = ('ASCII_AnyURI', 'ASCII_Boolean', 'ASCII_DOI', 'ASCII_Date_DOY', 'ASCII_Date_Time_DOY', 'ASCII_Date_Time_DOY_UTC', 'ASCII_Date_Time_YMD', 'ASCII_Date_Time_YMD_UTC', 'ASCII_Date_YMD', 'ASCII_Directory_Path_Name', 'ASCII_File_Name', 'ASCII_File_Specification_Name', 'ASCII_Integer', 'ASCII_LID', 'ASCII_LIDVID', 'ASCII_LIDVID_LID', 'ASCII_MD5_Checksum', 'ASCII_NonNegative_Integer', 'ASCII_Numeric_Base16', 'ASCII_Numeric_Base2', 'ASCII_Numeric_Base8', 'ASCII_Real', 'ASCII_Short_String_Collapsed', 'ASCII_Short_String_Preserved', 'ASCII_Text_Collapsed', 'ASCII_Text_Preserved', 'ASCII_Time', 'ASCII_VID', 'UTF8_Short_String_Collapsed', 'UTF8_Short_String_Preserved', 'UTF8_Text_Preserved')">
        The attribute pds:value_data_type must be equal to one of the following values 'ASCII_AnyURI', 'ASCII_Boolean', 'ASCII_DOI', 'ASCII_Date_DOY', 'ASCII_Date_Time_DOY', 'ASCII_Date_Time_DOY_UTC', 'ASCII_Date_Time_YMD', 'ASCII_Date_Time_YMD_UTC', 'ASCII_Date_YMD', 'ASCII_Directory_Path_Name', 'ASCII_File_Name', 'ASCII_File_Specification_Name', 'ASCII_Integer', 'ASCII_LID', 'ASCII_LIDVID', 'ASCII_LIDVID_LID', 'ASCII_MD5_Checksum', 'ASCII_NonNegative_Integer', 'ASCII_Numeric_Base16', 'ASCII_Numeric_Base2', 'ASCII_Numeric_Base8', 'ASCII_Real', 'ASCII_Short_String_Collapsed', 'ASCII_Short_String_Preserved', 'ASCII_Text_Collapsed', 'ASCII_Text_Preserved', 'ASCII_Time', 'ASCII_VID', 'UTF8_Short_String_Collapsed', 'UTF8_Short_String_Preserved', 'UTF8_Text_Preserved'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Data_Set_PDS3/pds:archive_status">
      <sch:assert test=". = ('ARCHIVED', 'ARCHIVED_ACCUMULATING', 'IN_LIEN_RESOLUTION', 'IN_LIEN_RESOLUTION_ACCUMULATING', 'IN_PEER_REVIEW', 'IN_PEER_REVIEW_ACCUMULATING', 'IN_QUEUE', 'IN_QUEUE_ACCUMULATING', 'LOCALLY_ARCHIVED', 'LOCALLY_ARCHIVED_ACCUMULATING', 'PRE_PEER_REVIEW', 'PRE_PEER_REVIEW_ACCUMULATING', 'SAFED', 'SUPERSEDED')">
        The attribute pds:archive_status must be equal to one of the following values 'ARCHIVED', 'ARCHIVED_ACCUMULATING', 'IN_LIEN_RESOLUTION', 'IN_LIEN_RESOLUTION_ACCUMULATING', 'IN_PEER_REVIEW', 'IN_PEER_REVIEW_ACCUMULATING', 'IN_QUEUE', 'IN_QUEUE_ACCUMULATING', 'LOCALLY_ARCHIVED', 'LOCALLY_ARCHIVED_ACCUMULATING', 'PRE_PEER_REVIEW', 'PRE_PEER_REVIEW_ACCUMULATING', 'SAFED', 'SUPERSEDED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Data_Set_PDS3/pds:start_date_time" role="warning">
      <sch:assert test="false()">
        pds:Data_Set_PDS3/pds:start_date_time is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Data_Set_PDS3/pds:stop_date_time" role="warning">
      <sch:assert test="false()">
        pds:Data_Set_PDS3/pds:stop_date_time is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Display_2D_Image" role="warning">
      <sch:assert test="false()">
        pds:Display_2D_Image is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Display_2D_Image/pds:line_display_direction">
      <sch:assert test=". = ('Down', 'Up')">
        The attribute pds:line_display_direction must be equal to one of the following values 'Down', 'Up'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Display_2D_Image/pds:sample_display_direction">
      <sch:assert test=". = ('Right')">
        The attribute pds:sample_display_direction must be equal to the value 'Right'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Document_File/pds:document_standard_id">
      <sch:assert test=". = ('7-Bit ASCII Text', 'Encapsulated Postscript', 'GIF', 'HTML 2.0', 'HTML 3.2', 'HTML 4.0', 'HTML 4.01', 'JPEG', 'LaTEX', 'Microsoft Excel', 'Microsoft Word', 'PDF', 'PDF/A', 'PNG', 'Postscript', 'Rich Text', 'TIFF', 'UTF-8 Text')">
        The attribute pds:document_standard_id must be equal to one of the following values '7-Bit ASCII Text', 'Encapsulated Postscript', 'GIF', 'HTML 2.0', 'HTML 3.2', 'HTML 4.0', 'HTML 4.01', 'JPEG', 'LaTEX', 'Microsoft Excel', 'Microsoft Word', 'PDF', 'PDF/A', 'PNG', 'Postscript', 'Rich Text', 'TIFF', 'UTF-8 Text'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Document_Format" role="warning">
      <sch:assert test="pds:format_type != 'single file'">
        The value single file for attribute Document_Format.format_type is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:format_type != 'multiple file'">
        The value multiple file for attribute Document_Format.format_type is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Element_Array/pds:data_type">
      <sch:assert test=". = ('ComplexLSB16', 'ComplexLSB8', 'ComplexMSB16', 'ComplexMSB8', 'IEEE754LSBDouble', 'IEEE754LSBSingle', 'IEEE754MSBDouble', 'IEEE754MSBSingle', 'SignedBitString', 'SignedByte', 'SignedLSB2', 'SignedLSB4', 'SignedLSB8', 'SignedMSB2', 'SignedMSB4', 'SignedMSB8', 'UnsignedBitString', 'UnsignedByte', 'UnsignedLSB2', 'UnsignedLSB4', 'UnsignedLSB8', 'UnsignedMSB2', 'UnsignedMSB4', 'UnsignedMSB8')">
        The attribute pds:data_type must be equal to one of the following values 'ComplexLSB16', 'ComplexLSB8', 'ComplexMSB16', 'ComplexMSB8', 'IEEE754LSBDouble', 'IEEE754LSBSingle', 'IEEE754MSBDouble', 'IEEE754MSBSingle', 'SignedBitString', 'SignedByte', 'SignedLSB2', 'SignedLSB4', 'SignedLSB8', 'SignedMSB2', 'SignedMSB4', 'SignedMSB8', 'UnsignedBitString', 'UnsignedByte', 'UnsignedLSB2', 'UnsignedLSB4', 'UnsignedLSB8', 'UnsignedMSB2', 'UnsignedMSB4', 'UnsignedMSB8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Encoded_Binary" role="warning">
      <sch:assert test="pds:encoding_standard_id != 'CCSDS Communications Protocols'">
        The value CCSDS Communications Protocols for attribute Encoded_Binary.encoding_standard_id is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Encoded_Binary/pds:encoding_standard_id">
      <sch:assert test=". = ('CCSDS Space Communications Protocols')">
        The attribute pds:encoding_standard_id must be equal to the value 'CCSDS Space Communications Protocols'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Encoded_Byte_Stream/pds:object_length">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Encoded_Byte_Stream/pds:offset">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Encoded_Header/pds:encoding_standard_id">
      <sch:assert test=". = ('TIFF')">
        The attribute pds:encoding_standard_id must be equal to the value 'TIFF'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Encoded_Image/pds:encoding_standard_id">
      <sch:assert test=". = ('GIF', 'J2C', 'JPEG', 'PDF', 'PDF/A', 'PNG', 'TIFF')">
        The attribute pds:encoding_standard_id must be equal to one of the following values 'GIF', 'J2C', 'JPEG', 'PDF', 'PDF/A', 'PNG', 'TIFF'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Encoded_Native/pds:encoding_standard_id">
      <sch:assert test=". = ('SEED 2.4')">
        The attribute pds:encoding_standard_id must be equal to the value 'SEED 2.4'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Facility/pds:type">
      <sch:assert test=". = ('Laboratory', 'Observatory')">
        The attribute pds:type must be equal to one of the following values 'Laboratory', 'Observatory'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Field_Binary/pds:data_type">
      <sch:assert test=". = ('ASCII_AnyURI', 'ASCII_Boolean', 'ASCII_DOI', 'ASCII_Date_DOY', 'ASCII_Date_Time_DOY', 'ASCII_Date_Time_DOY_UTC', 'ASCII_Date_Time_YMD', 'ASCII_Date_Time_YMD_UTC', 'ASCII_Date_YMD', 'ASCII_Directory_Path_Name', 'ASCII_File_Name', 'ASCII_File_Specification_Name', 'ASCII_Integer', 'ASCII_LID', 'ASCII_LIDVID', 'ASCII_LIDVID_LID', 'ASCII_MD5_Checksum', 'ASCII_NonNegative_Integer', 'ASCII_Numeric_Base16', 'ASCII_Numeric_Base2', 'ASCII_Numeric_Base8', 'ASCII_Real', 'ASCII_String', 'ASCII_Time', 'ASCII_VID', 'ComplexLSB16', 'ComplexLSB8', 'ComplexMSB16', 'ComplexMSB8', 'IEEE754LSBDouble', 'IEEE754LSBSingle', 'IEEE754MSBDouble', 'IEEE754MSBSingle', 'SignedBitString', 'SignedByte', 'SignedLSB2', 'SignedLSB4', 'SignedLSB8', 'SignedMSB2', 'SignedMSB4', 'SignedMSB8', 'UTF8_String', 'UnsignedBitString', 'UnsignedByte', 'UnsignedLSB2', 'UnsignedLSB4', 'UnsignedLSB8', 'UnsignedMSB2', 'UnsignedMSB4', 'UnsignedMSB8')">
        The attribute pds:data_type must be equal to one of the following values 'ASCII_AnyURI', 'ASCII_Boolean', 'ASCII_DOI', 'ASCII_Date_DOY', 'ASCII_Date_Time_DOY', 'ASCII_Date_Time_DOY_UTC', 'ASCII_Date_Time_YMD', 'ASCII_Date_Time_YMD_UTC', 'ASCII_Date_YMD', 'ASCII_Directory_Path_Name', 'ASCII_File_Name', 'ASCII_File_Specification_Name', 'ASCII_Integer', 'ASCII_LID', 'ASCII_LIDVID', 'ASCII_LIDVID_LID', 'ASCII_MD5_Checksum', 'ASCII_NonNegative_Integer', 'ASCII_Numeric_Base16', 'ASCII_Numeric_Base2', 'ASCII_Numeric_Base8', 'ASCII_Real', 'ASCII_String', 'ASCII_Time', 'ASCII_VID', 'ComplexLSB16', 'ComplexLSB8', 'ComplexMSB16', 'ComplexMSB8', 'IEEE754LSBDouble', 'IEEE754LSBSingle', 'IEEE754MSBDouble', 'IEEE754MSBSingle', 'SignedBitString', 'SignedByte', 'SignedLSB2', 'SignedLSB4', 'SignedLSB8', 'SignedMSB2', 'SignedMSB4', 'SignedMSB8', 'UTF8_String', 'UnsignedBitString', 'UnsignedByte', 'UnsignedLSB2', 'UnsignedLSB4', 'UnsignedLSB8', 'UnsignedMSB2', 'UnsignedMSB4', 'UnsignedMSB8'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Field_Binary/pds:field_length">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Field_Binary/pds:field_location">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Field_Bit/pds:data_type">
      <sch:assert test=". = ('SignedBitString', 'UnsignedBitString')">
        The attribute pds:data_type must be equal to one of the following values 'SignedBitString', 'UnsignedBitString'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Field_Character/pds:data_type">
      <sch:assert test=". = ('ASCII_AnyURI', 'ASCII_Boolean', 'ASCII_DOI', 'ASCII_Date_DOY', 'ASCII_Date_Time_DOY', 'ASCII_Date_Time_DOY_UTC', 'ASCII_Date_Time_YMD', 'ASCII_Date_Time_YMD_UTC', 'ASCII_Date_YMD', 'ASCII_Directory_Path_Name', 'ASCII_File_Name', 'ASCII_File_Specification_Name', 'ASCII_Integer', 'ASCII_LID', 'ASCII_LIDVID', 'ASCII_LIDVID_LID', 'ASCII_MD5_Checksum', 'ASCII_NonNegative_Integer', 'ASCII_Numeric_Base16', 'ASCII_Numeric_Base2', 'ASCII_Numeric_Base8', 'ASCII_Real', 'ASCII_String', 'ASCII_Time', 'ASCII_VID', 'UTF8_String')">
        The attribute pds:data_type must be equal to one of the following values 'ASCII_AnyURI', 'ASCII_Boolean', 'ASCII_DOI', 'ASCII_Date_DOY', 'ASCII_Date_Time_DOY', 'ASCII_Date_Time_DOY_UTC', 'ASCII_Date_Time_YMD', 'ASCII_Date_Time_YMD_UTC', 'ASCII_Date_YMD', 'ASCII_Directory_Path_Name', 'ASCII_File_Name', 'ASCII_File_Specification_Name', 'ASCII_Integer', 'ASCII_LID', 'ASCII_LIDVID', 'ASCII_LIDVID_LID', 'ASCII_MD5_Checksum', 'ASCII_NonNegative_Integer', 'ASCII_Numeric_Base16', 'ASCII_Numeric_Base2', 'ASCII_Numeric_Base8', 'ASCII_Real', 'ASCII_String', 'ASCII_Time', 'ASCII_VID', 'UTF8_String'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Field_Character/pds:field_length">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Field_Character/pds:field_location">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Field_Delimited/pds:data_type">
      <sch:assert test=". = ('ASCII_AnyURI', 'ASCII_Boolean', 'ASCII_DOI', 'ASCII_Date_DOY', 'ASCII_Date_Time_DOY', 'ASCII_Date_Time_DOY_UTC ', 'ASCII_Date_Time_YMD', 'ASCII_Date_Time_YMD_UTC', 'ASCII_Date_YMD', 'ASCII_Directory_Path_Name', 'ASCII_File_Name', 'ASCII_File_Specification_Name', 'ASCII_Integer', 'ASCII_LID', 'ASCII_LIDVID', 'ASCII_LIDVID_LID', 'ASCII_MD5_Checksum', 'ASCII_NonNegative_Integer', 'ASCII_Numeric_Base16', 'ASCII_Numeric_Base2', 'ASCII_Numeric_Base8', 'ASCII_Real', 'ASCII_String', 'ASCII_Time', 'ASCII_VID', 'UTF8_String')">
        The attribute pds:data_type must be equal to one of the following values 'ASCII_AnyURI', 'ASCII_Boolean', 'ASCII_DOI', 'ASCII_Date_DOY', 'ASCII_Date_Time_DOY', 'ASCII_Date_Time_DOY_UTC ', 'ASCII_Date_Time_YMD', 'ASCII_Date_Time_YMD_UTC', 'ASCII_Date_YMD', 'ASCII_Directory_Path_Name', 'ASCII_File_Name', 'ASCII_File_Specification_Name', 'ASCII_Integer', 'ASCII_LID', 'ASCII_LIDVID', 'ASCII_LIDVID_LID', 'ASCII_MD5_Checksum', 'ASCII_NonNegative_Integer', 'ASCII_Numeric_Base16', 'ASCII_Numeric_Base2', 'ASCII_Numeric_Base8', 'ASCII_Real', 'ASCII_String', 'ASCII_Time', 'ASCII_VID', 'UTF8_String'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Field_Delimited/pds:maximum_field_length">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:File/pds:file_size">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Group_Field_Binary">
      <sch:let name="num_fields" value="(pds:fields)"/>
      <sch:let name="num_groups" value="(pds:groups)"/>
      <sch:assert test="$num_fields > '0' or $num_groups > '0'">
        The values for 'fields' and 'groups' must not both be '0'.  The number of fields found: (<sch:value-of select="$num_fields"/>).  The number of groups found: (<sch:value-of select="$num_groups"/>).</sch:assert>
      <sch:assert test="$num_fields = count(pds:Field_Binary)">
        The number of Field_Binary elements (<sch:value-of select="count(pds:Field_Binary)"/>) does not match the number found in the 'fields' attribute (<sch:value-of select="$num_fields"/>).</sch:assert>
      <sch:assert test="$num_groups = count(pds:Group_Field_Binary)">
        The number of Group_Field_Binary elements (<sch:value-of select="count(pds:Group_Field_Binary)"/>) does not match the number found in the 'groups' attribute (<sch:value-of select="$num_groups"/>).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Group_Field_Binary/pds:group_length">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Group_Field_Binary/pds:group_location">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Group_Field_Character">
      <sch:let name="num_fields" value="(pds:fields)"/>
      <sch:let name="num_groups" value="(pds:groups)"/>
      <sch:assert test="$num_fields > '0' or $num_groups > '0'">
        The values for 'fields' and 'groups' must not both be '0'.  The number of fields found: (<sch:value-of select="$num_fields"/>).  The number of groups found: (<sch:value-of select="$num_groups"/>).</sch:assert>
      <sch:assert test="$num_fields = count(pds:Field_Character)">
        The number of Field_Character elements (<sch:value-of select="count(pds:Field_Character)"/>) does not match the number found in the 'fields' attribute (<sch:value-of select="$num_fields"/>).</sch:assert>
      <sch:assert test="$num_groups = count(pds:Group_Field_Character)">
        The number of Group_Field_Character elements (<sch:value-of select="count(pds:Group_Field_Character)"/>) does not match the number found in the 'groups' attribute (<sch:value-of select="$num_groups"/>).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Group_Field_Character/pds:group_length">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Group_Field_Character/pds:group_location">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Group_Field_Delimited">
      <sch:let name="num_fields" value="(pds:fields)"/>
      <sch:let name="num_groups" value="(pds:groups)"/>
      <sch:assert test="$num_fields > '0' or $num_groups > '0'">
        The values for 'fields' and 'groups' must not both be '0'.  The number of fields found: (<sch:value-of select="$num_fields"/>).  The number of groups found: (<sch:value-of select="$num_groups"/>).</sch:assert>
      <sch:assert test="$num_fields = count(pds:Field_Delimited)">
        The number of Field_Delimited elements (<sch:value-of select="count(pds:Field_Delimited)"/>) does not match the number found in the 'fields' attribute (<sch:value-of select="$num_fields"/>).</sch:assert>
      <sch:assert test="$num_groups = count(pds:Group_Field_Delimited)">
        The number of Group_Field_Delimited elements (<sch:value-of select="count(pds:Group_Field_Delimited)"/>) does not match the number found in the 'groups' attribute (<sch:value-of select="$num_groups"/>).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Header/pds:object_length">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Header/pds:parsing_standard_id">
      <sch:assert test=". = ('7-Bit ASCII Text', 'CDF 3.4 ISTP/IACG', 'FITS 3.0', 'ISIS2', 'ISIS2 History Label', 'ISIS3', 'PDS DSV 1', 'PDS ODL 2', 'PDS3', 'Pre-PDS3', 'UTF-8 Text', 'VICAR1', 'VICAR2')">
        The attribute pds:parsing_standard_id must be equal to one of the following values '7-Bit ASCII Text', 'CDF 3.4 ISTP/IACG', 'FITS 3.0', 'ISIS2', 'ISIS2 History Label', 'ISIS3', 'PDS DSV 1', 'PDS ODL 2', 'PDS3', 'Pre-PDS3', 'UTF-8 Text', 'VICAR1', 'VICAR2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Identification_Area">
      <sch:assert test="pds:product_class = local-name(/*)">
        The attribute pds:product_class must match parent product class of '<sch:value-of select="local-name(/*)" />'.</sch:assert>
      <sch:assert test="pds:logical_identifier eq lower-case(pds:logical_identifier)">
        The value of the attribute logical_identifier must only contain lower-case letters'</sch:assert>
      <sch:assert test="if (pds:logical_identifier) then starts-with(pds:logical_identifier,'urn:nasa:pds:') else true()">
        The value of the attribute logical_identifier must start with 'urn:nasa:pds:'</sch:assert>
      <sch:assert test="if (pds:logical_identifier) then not(contains(pds:logical_identifier,'::')) else true()">
        The value of the attribute logical_identifier must not include a value that contains '::'</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Identification_Area/pds:information_model_version">
      <sch:assert test=". = ('1.4.0.0')">
        The attribute pds:information_model_version must be equal to the value '1.4.0.0'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Identification_Area/pds:product_class">
      <sch:assert test=". = ('Product_AIP', 'Product_Attribute_Definition', 'Product_Browse', 'Product_Bundle', 'Product_Class_Definition', 'Product_Collection', 'Product_Context', 'Product_DIP', 'Product_DIP_Deep_Archive', 'Product_Data_Set_PDS3', 'Product_Document', 'Product_File_Repository', 'Product_File_Text', 'Product_Instrument_Host_PDS3', 'Product_Instrument_PDS3', 'Product_Mission_PDS3', 'Product_Native', 'Product_Observational', 'Product_Proxy_PDS3', 'Product_SIP', 'Product_SIP_Deep_Archive', 'Product_SPICE_Kernel', 'Product_Service', 'Product_Software', 'Product_Subscription_PDS3', 'Product_Target_PDS3', 'Product_Thumbnail', 'Product_Update', 'Product_Volume_PDS3', 'Product_Volume_Set_PDS3', 'Product_XML_Schema', 'Product_Zipped')">
        The attribute pds:product_class must be equal to one of the following values 'Product_AIP', 'Product_Attribute_Definition', 'Product_Browse', 'Product_Bundle', 'Product_Class_Definition', 'Product_Collection', 'Product_Context', 'Product_DIP', 'Product_DIP_Deep_Archive', 'Product_Data_Set_PDS3', 'Product_Document', 'Product_File_Repository', 'Product_File_Text', 'Product_Instrument_Host_PDS3', 'Product_Instrument_PDS3', 'Product_Mission_PDS3', 'Product_Native', 'Product_Observational', 'Product_Proxy_PDS3', 'Product_SIP', 'Product_SIP_Deep_Archive', 'Product_SPICE_Kernel', 'Product_Service', 'Product_Software', 'Product_Subscription_PDS3', 'Product_Target_PDS3', 'Product_Thumbnail', 'Product_Update', 'Product_Volume_PDS3', 'Product_Volume_Set_PDS3', 'Product_XML_Schema', 'Product_Zipped'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Instrument" role="warning">
      <sch:assert test="pds:type != 'Thermal And Electrical Conductivity Probe'">
        The value Thermal And Electrical Conductivity Probe for attribute Instrument.type is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:type != 'X-ray Defraction Spectrometer'">
        The value X-ray Defraction Spectrometer for attribute Instrument.type is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:type != 'Alpha Particle Xray Spectrometer'">
        The value Alpha Particle Xray Spectrometer for attribute Instrument.type is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:type != 'X-ray Fluorescence'">
        The value X-ray Fluorescence for attribute Instrument.type is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:type != 'Grinding And Drilling Tool'">
        The value Grinding And Drilling Tool for attribute Instrument.type is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Instrument/pds:type">
      <sch:assert test=". = ('Accelerometer', 'Alpha Particle Detector', 'Alpha Particle X-Ray Spectrometer', 'Altimeter', 'Anemometer', 'Atomic Force Microscope', 'Barometer', 'Biology Experiments', 'Bolometer', 'Camera', 'Cosmic Ray Detector', 'Drilling Tool', 'Dust Detector', 'Electrical Probe', 'Energetic Particle Detector', 'Gamma Ray Detector', 'Gas Analyzer', 'Grinding Tool', 'Hygrometer', 'Imager', 'Imaging Spectrometer', 'Inertial Measurement Unit', 'Infrared Spectrometer', 'Laser Induced Breakdown Spectrometer', 'Magnetometer', 'Mass Spectrometer', 'Microwave Spectrometer', 'Moessbauer Spectrometer', 'Naked Eye', 'Neutral Particle Detector', 'Neutron Detector', 'Photometer', 'Plasma Analyzer', 'Plasma Detector', 'Plasma Wave Spectrometer', 'Polarimeter', 'Radar', 'Radio Science', 'Radio Spectrometer', 'Radio Telescope', 'Radiometer', 'Reflectometer', 'Robotic Arm', 'Spectrograph Imager', 'Spectrometer', 'Thermal Imager', 'Thermal Probe', 'Thermometer', 'Ultraviolet Spectrometer', 'Wet Chemistry Laboratory', 'X-ray Detector', 'X-ray Diffraction Spectrometer', 'X-ray Fluorescence Spectrometer')">
        The attribute pds:type must be equal to one of the following values 'Accelerometer', 'Alpha Particle Detector', 'Alpha Particle X-Ray Spectrometer', 'Altimeter', 'Anemometer', 'Atomic Force Microscope', 'Barometer', 'Biology Experiments', 'Bolometer', 'Camera', 'Cosmic Ray Detector', 'Drilling Tool', 'Dust Detector', 'Electrical Probe', 'Energetic Particle Detector', 'Gamma Ray Detector', 'Gas Analyzer', 'Grinding Tool', 'Hygrometer', 'Imager', 'Imaging Spectrometer', 'Inertial Measurement Unit', 'Infrared Spectrometer', 'Laser Induced Breakdown Spectrometer', 'Magnetometer', 'Mass Spectrometer', 'Microwave Spectrometer', 'Moessbauer Spectrometer', 'Naked Eye', 'Neutral Particle Detector', 'Neutron Detector', 'Photometer', 'Plasma Analyzer', 'Plasma Detector', 'Plasma Wave Spectrometer', 'Polarimeter', 'Radar', 'Radio Science', 'Radio Spectrometer', 'Radio Telescope', 'Radiometer', 'Reflectometer', 'Robotic Arm', 'Spectrograph Imager', 'Spectrometer', 'Thermal Imager', 'Thermal Probe', 'Thermometer', 'Ultraviolet Spectrometer', 'Wet Chemistry Laboratory', 'X-ray Detector', 'X-ray Diffraction Spectrometer', 'X-ray Fluorescence Spectrometer'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Instrument_Host" role="warning">
      <sch:assert test="pds:type != 'Earth Based'">
        The value Earth Based for attribute Instrument_Host.type is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Instrument_Host/pds:type">
      <sch:assert test=". = ('Earth Based', 'Earth-based', 'Lander', 'Rover', 'Spacecraft')">
        The attribute pds:type must be equal to one of the following values 'Earth Based', 'Earth-based', 'Lander', 'Rover', 'Spacecraft'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Instrument_Host/pds:version_id" role="warning">
      <sch:assert test="false()">
        pds:Instrument_Host/pds:version_id is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Internal_Reference">
      <sch:let name="lid_num_colons" value="string-length(pds:lid_reference) - string-length(translate(pds:lid_reference, ':', ''))"/>
      <sch:let name="lidvid_num_colons" value="string-length(pds:lidvid_reference) - string-length(translate(pds:lidvid_reference, ':', ''))"/>
      <sch:let name="lid_min_required_colons" value="3"/>
      <sch:let name="lid_max_required_colons" value="5"/>
      <sch:let name="lidvid_min_required_colons" value="5"/>
      <sch:let name="lidvid_max_required_colons" value="7"/>
      <sch:assert test="if (pds:lid_reference) then not(contains(pds:lid_reference,'::')) else true()">
        The value of the attribute lid_reference must not include a value that contains '::' followed by version id</sch:assert>
      <sch:assert test="if (pds:lid_reference) then (($lid_num_colons &gt;= $lid_min_required_colons) and ($lid_num_colons &lt;= $lid_max_required_colons)) else true()">
        The number of colons found in lid_reference: (<sch:value-of select="$lid_num_colons"/>) is inconsistent with the number expected: (<sch:value-of select="$lid_min_required_colons"/>:<sch:value-of select="$lid_max_required_colons"/>).</sch:assert>
      <sch:assert test="if (pds:lidvid_reference) then (($lidvid_num_colons &gt;= $lidvid_min_required_colons) and ($lidvid_num_colons &lt;= $lidvid_max_required_colons)) else true()">
        The number of colons found in lidvid_reference: (<sch:value-of select="$lidvid_num_colons"/>) is inconsistent with the number expected: (<sch:value-of select="$lidvid_min_required_colons"/>:<sch:value-of select="$lidvid_max_required_colons"/>).</sch:assert>
      <sch:assert test="if (pds:lid_reference) then starts-with(pds:lid_reference,'urn:nasa:pds:') else true()">
        The value of the attribute lid_reference must start with 'urn:nasa:pds:'</sch:assert>
      <sch:assert test="if (pds:lidvid_reference) then starts-with(pds:lidvid_reference,'urn:nasa:pds:') else true()">
        The value of the attribute lidvid_reference must start with 'urn:nasa:pds:'</sch:assert>
      <sch:assert test="if (pds:lidvid_reference) then contains(pds:lidvid_reference,'::') else true()">
        The value of the attribute lidvid_reference must include a value that contains '::' followed by version id</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Inventory">
      <sch:assert test="((pds:reference_type eq 'inventory_has_member_product') and (count(pds:Record_Delimited/pds:Field_Delimited) eq 2))">
        Inventory.Field_Delimited does not match the expected number of instances</sch:assert>
      <sch:assert test="pds:offset eq '0'">
        Inventory.offset must have a value of '0'</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Inventory" role="warning">
      <sch:assert test="pds:record_delimiter != 'carriage-return line-feed'">
        The value carriage-return line-feed for attribute Inventory.record_delimiter is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:field_delimiter != 'comma'">
        The value comma for attribute Inventory.field_delimiter is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:field_delimiter != 'horizontal tab'">
        The value horizontal tab for attribute Inventory.field_delimiter is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:field_delimiter != 'semicolon'">
        The value semicolon for attribute Inventory.field_delimiter is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:field_delimiter != 'vertical bar'">
        The value vertical bar for attribute Inventory.field_delimiter is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Inventory/pds:Record_Delimited/pds:Field_Delimited[1]">
      <sch:assert test="pds:field_number eq '1'">
        The first field of an Inventory must have field_number set to 1.</sch:assert>
      <sch:assert test="pds:maximum_field_length eq '1'">
        The first field of an Inventory must have maximum_field_length set to 1.</sch:assert>
      <sch:assert test="pds:data_type eq 'ASCII_String'">
        The first field of an Inventory must have data type set to 'ASCII_String'.</sch:assert>
      <sch:assert test="pds:name eq 'Member_Status'">
        The first field of an Inventory must have name set to 'Member_Status'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Inventory/pds:Record_Delimited/pds:Field_Delimited[2]">
      <sch:assert test="pds:field_number eq '2'">
        The second field of an Inventory must have field_number set to 2.</sch:assert>
      <sch:assert test="(pds:data_type eq 'ASCII_LIDVID_LID')">
        The second field of an Inventory must have data_type set to 'ASCII_LIDVID_LID'.</sch:assert>
      <sch:assert test="(pds:name eq 'LIDVID_LID')">
        The second field of an Inventory must have name set to 'LIDVID_LID'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Inventory/pds:field_delimiter">
      <sch:assert test=". = ('Comma', 'Horizontal Tab', 'Semicolon', 'Vertical Bar', 'comma', 'horizontal tab', 'semicolon', 'vertical bar')">
        The attribute pds:field_delimiter must be equal to one of the following values 'Comma', 'Horizontal Tab', 'Semicolon', 'Vertical Bar', 'comma', 'horizontal tab', 'semicolon', 'vertical bar'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Inventory/pds:parsing_standard_id">
      <sch:assert test=". = ('PDS DSV 1')">
        The attribute pds:parsing_standard_id must be equal to the value 'PDS DSV 1'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Inventory/pds:record_delimiter">
      <sch:assert test=". = ('Carriage-Return Line-Feed', 'carriage-return line-feed')">
        The attribute pds:record_delimiter must be equal to one of the following values 'Carriage-Return Line-Feed', 'carriage-return line-feed'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Inventory/pds:reference_type">
      <sch:assert test=". = ('inventory_has_member_product')">
        The attribute pds:reference_type must be equal to the value 'inventory_has_member_product'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Investigation/pds:type">
      <sch:assert test=". = ('Individual Investigation', 'Mission', 'Observing Campaign', 'Other Investigation')">
        The attribute pds:type must be equal to one of the following values 'Individual Investigation', 'Mission', 'Observing Campaign', 'Other Investigation'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Investigation_Area/pds:type">
      <sch:assert test=". = ('Individual Investigation', 'Mission', 'Observing Campaign', 'Other Investigation')">
        The attribute pds:type must be equal to one of the following values 'Individual Investigation', 'Mission', 'Observing Campaign', 'Other Investigation'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Manifest_SIP_Deep_Archive/pds:field_delimiter">
      <sch:assert test=". = ('Comma', 'Horizontal Tab', 'Semicolon', 'Vertical Bar', 'comma', 'horizontal tab', 'semicolon', 'vertical bar')">
        The attribute pds:field_delimiter must be equal to one of the following values 'Comma', 'Horizontal Tab', 'Semicolon', 'Vertical Bar', 'comma', 'horizontal tab', 'semicolon', 'vertical bar'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Manifest_SIP_Deep_Archive/pds:parsing_standard_id">
      <sch:assert test=". = ('PDS DSV 1')">
        The attribute pds:parsing_standard_id must be equal to the value 'PDS DSV 1'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Manifest_SIP_Deep_Archive/pds:record_delimiter">
      <sch:assert test=". = ('Carriage-Return Line-Feed', 'carriage-return line-feed')">
        The attribute pds:record_delimiter must be equal to one of the following values 'Carriage-Return Line-Feed', 'carriage-return line-feed'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Node/pds:name">
      <sch:assert test=". = ('Engineering', 'Geosciences', 'Imaging', 'Management', 'Navigation and Ancillary Information Facility', 'Planetary Atmospheres', 'Planetary Plasma Interactions', 'Planetary Rings', 'Planetary Science Archive', 'Radio Science', 'Small Bodies')">
        The attribute pds:name must be equal to one of the following values 'Engineering', 'Geosciences', 'Imaging', 'Management', 'Navigation and Ancillary Information Facility', 'Planetary Atmospheres', 'Planetary Plasma Interactions', 'Planetary Rings', 'Planetary Science Archive', 'Radio Science', 'Small Bodies'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Observing_System_Component/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('is_instrument', 'is_instrument_host', 'is_other', 'is_facility', 'is_telescope')">
        The attribute reference_type must be set to one of the following values 'is_instrument', 'is_instrument_host', 'is_other', 'is_facility', 'is_telescope'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Observing_System_Component/pds:type">
      <sch:assert test=". = ('Artificial Illumination', 'Instrument', 'Laboratory', 'Literature Search', 'Naked Eye', 'Observatory', 'Spacecraft', 'Telescope')">
        The attribute pds:type must be equal to one of the following values 'Artificial Illumination', 'Instrument', 'Laboratory', 'Literature Search', 'Naked Eye', 'Observatory', 'Spacecraft', 'Telescope'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:PDS_Affiliate">
      <sch:assert test="if (pds:phone_book_flag) then pds:phone_book_flag = ('true', 'false') else true()">
        The attribute pds:phone_book_flag must be equal to one of the following values 'true', 'false'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:PDS_Affiliate" role="warning">
      <sch:assert test="pds:team_name != 'Navigation Ancillary Information Facility'">
        The value Navigation Ancillary Information Facility for attribute PDS_Affiliate.team_name is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:PDS_Affiliate/pds:affiliation_type">
      <sch:assert test=". = ('Affiliate', 'Data Provider', 'Manager', 'Technical Staff')">
        The attribute pds:affiliation_type must be equal to one of the following values 'Affiliate', 'Data Provider', 'Manager', 'Technical Staff'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:PDS_Affiliate/pds:team_name">
      <sch:assert test=". = ('Engineering', 'Geosciences', 'Headquarters', 'Imaging', 'Management', 'National Space Science Data Center', 'Navigation and Ancillary Information Facility', 'Planetary Atmospheres', 'Planetary Plasma Interactions', 'Planetary Rings', 'Radio Science', 'Small Bodies')">
        The attribute pds:team_name must be equal to one of the following values 'Engineering', 'Geosciences', 'Headquarters', 'Imaging', 'Management', 'National Space Science Data Center', 'Navigation and Ancillary Information Facility', 'Planetary Atmospheres', 'Planetary Plasma Interactions', 'Planetary Rings', 'Radio Science', 'Small Bodies'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Parsable_Byte_Stream/pds:object_length">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Parsable_Byte_Stream/pds:offset">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Primary_Result_Summary/pds:Science_Facets">
      <sch:assert test="if (pds:discipline_name) then pds:discipline_name = ('Atmospheres', 'Fields', 'Flux Measurements', 'Imaging', 'Particles', 'Ring-Moon Systems', 'Small Bodies', 'Spectroscopy') else true()">
        The attribute pds:discipline_name must be equal to one of the following values 'Atmospheres', 'Fields', 'Flux Measurements', 'Imaging', 'Particles', 'Ring-Moon Systems', 'Small Bodies', 'Spectroscopy'.</sch:assert>
      <sch:assert test="if (pds:discipline_name and pds:facet1 and (pds:discipline_name eq 'Atmospheres')) then pds:facet1 = ('Structure', 'Meteorology') else true()">
        If the attribute pds:discipline_name equals Atmospheres then if present pds:facet1 must be equal to one of the following values 'Structure', 'Meteorology'.</sch:assert>
      <sch:assert test="if (pds:discipline_name and pds:facet1 and (pds:discipline_name eq 'Fields')) then pds:facet1 = ('Electric', 'Magnetic') else true()">
        If the attribute pds:discipline_name equals Fields then if present pds:facet1 must be equal to one of the following values 'Electric', 'Magnetic'.</sch:assert>
      <sch:assert test="if (pds:discipline_name and pds:facet2 and (pds:discipline_name eq 'Fields')) then pds:facet2 = ('Background', 'Waves') else true()">
        If the attribute pds:discipline_name equals Fields then if present pds:facet2 must be equal to one of the following values 'Background', 'Waves'.</sch:assert>
      <sch:assert test="if (pds:discipline_name and pds:facet1 and (pds:discipline_name eq 'Flux Measurements')) then pds:facet1 = ('Photometry', 'Polarimetry') else true()">
        If the attribute pds:discipline_name equals Flux Measurements then if present pds:facet1 must be equal to one of the following values 'Photometry', 'Polarimetry'.</sch:assert>
      <sch:assert test="if (pds:discipline_name and pds:facet1 and (pds:discipline_name eq 'Imaging')) then pds:facet1 = ('Grayscale', 'Color', 'Movie', 'Color Movie') else true()">
        If the attribute pds:discipline_name equals Imaging then if present pds:facet1 must be equal to one of the following values 'Grayscale', 'Color', 'Movie', 'Color Movie'.</sch:assert>
      <sch:assert test="if (pds:discipline_name and pds:facet1 and (pds:discipline_name eq 'Particles')) then pds:facet1 = ('Ions', 'Electrons', 'Neutrals') else true()">
        If the attribute pds:discipline_name equals Particles then if present pds:facet1 must be equal to one of the following values 'Ions', 'Electrons', 'Neutrals'.</sch:assert>
      <sch:assert test="if (pds:discipline_name and pds:facet2 and (pds:discipline_name eq 'Particles')) then pds:facet2 = ('Cosmic Ray', 'Solar Energetic', 'Energetic', 'Plasma') else true()">
        If the attribute pds:discipline_name equals Particles then if present pds:facet2 must be equal to one of the following values 'Cosmic Ray', 'Solar Energetic', 'Energetic', 'Plasma'.</sch:assert>
      <sch:assert test="if (pds:discipline_name and pds:facet1 and (pds:discipline_name eq 'Ring-Moon Systems')) then pds:facet1 = ('Satellite Astrometry', 'Ring Compositional Map', 'Ring Occultation Profile', 'Ring Thermal Map') else true()">
        If the attribute pds:discipline_name equals Ring-Moon Systems then if present pds:facet1 must be equal to one of the following values 'Satellite Astrometry', 'Ring Compositional Map', 'Ring Occultation Profile', 'Ring Thermal Map'.</sch:assert>
      <sch:assert test="if (pds:discipline_name and pds:facet1 and (pds:discipline_name eq 'Small Bodies')) then pds:facet1 = ('Dynamical Properties', 'Lightcurve', 'Meteoritics', 'Physical Properties', 'Production Rates', 'Shape Model', 'Taxonomy', 'Dust Study', 'Historical Reference', 'Gas Study') else true()">
        If the attribute pds:discipline_name equals Small Bodies then if present pds:facet1 must be equal to one of the following values 'Dynamical Properties', 'Lightcurve', 'Meteoritics', 'Physical Properties', 'Production Rates', 'Shape Model', 'Taxonomy', 'Dust Study', 'Historical Reference', 'Gas Study'.</sch:assert>
      <sch:assert test="if (pds:discipline_name and pds:facet1 and (pds:discipline_name eq 'Spectroscopy')) then pds:facet1 = ('2D', 'Linear', 'Spectral Cube', 'Spectral Image', 'Tabulated') else true()">
        If the attribute pds:discipline_name equals Spectroscopy then if present pds:facet1 must be equal to one of the following values '2D', 'Linear', 'Spectral Cube', 'Spectral Image', 'Tabulated'.</sch:assert>
      <sch:assert test="if (pds:discipline_name and pds:facet2) then pds:discipline_name = ('Fields', 'Particles') else true()">
        Facet2 is allowed only when pds:discipline_name is one of the following 'Fields', 'Particles'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Primary_Result_Summary/pds:Science_Facets/pds:subfacet1">
      <sch:assert test="name() = 'pds:Primary_Result_Summary/pds:Science_Facets/pds:subfacet1'">
        pds:subfacet1 should not be used. No values have been provided.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Primary_Result_Summary/pds:Science_Facets/pds:subfacet2">
      <sch:assert test="name() = 'pds:Primary_Result_Summary/pds:Science_Facets/pds:subfacet2'">
        pds:subfacet2 should not be used. No values have been provided.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Primary_Result_Summary/pds:data_regime">
      <sch:assert test=". = ('Dust', 'Electric Field', 'Electrons', 'Far Infrared', 'Gamma Ray', 'Infrared', 'Ions', 'Magnetic Field', 'Microwave', 'Millimeter', 'Near Infrared', 'Particles', 'Pressure', 'Radio', 'Sub-Millimeter', 'Temperature', 'Ultraviolet', 'Visible', 'X-Ray')">
        The attribute pds:data_regime must be equal to one of the following values 'Dust', 'Electric Field', 'Electrons', 'Far Infrared', 'Gamma Ray', 'Infrared', 'Ions', 'Magnetic Field', 'Microwave', 'Millimeter', 'Near Infrared', 'Particles', 'Pressure', 'Radio', 'Sub-Millimeter', 'Temperature', 'Ultraviolet', 'Visible', 'X-Ray'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Primary_Result_Summary/pds:data_regime" role="warning">
      <sch:assert test="false()">
        pds:Primary_Result_Summary/pds:data_regime is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Primary_Result_Summary/pds:processing_level">
      <sch:assert test=". = ('Calibrated', 'Derived', 'Partially Processed', 'Raw', 'Telemetry')">
        The attribute pds:processing_level must be equal to one of the following values 'Calibrated', 'Derived', 'Partially Processed', 'Raw', 'Telemetry'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Primary_Result_Summary/pds:processing_level_id">
      <sch:assert test=". = ('Calibrated', 'Derived', 'Partially Processed', 'Raw', 'Telemetry')">
        The attribute pds:processing_level_id must be equal to one of the following values 'Calibrated', 'Derived', 'Partially Processed', 'Raw', 'Telemetry'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Primary_Result_Summary/pds:processing_level_id" role="warning">
      <sch:assert test="false()">
        pds:Primary_Result_Summary/pds:processing_level_id is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Primary_Result_Summary/pds:purpose">
      <sch:assert test=". = ('Calibration', 'Checkout', 'Engineering', 'Navigation', 'Science')">
        The attribute pds:purpose must be equal to one of the following values 'Calibration', 'Checkout', 'Engineering', 'Navigation', 'Science'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Primary_Result_Summary/pds:type">
      <sch:assert test=". = ('Altimetry', 'Astrometry', 'Count', 'E/B-Field Vectors', 'Gravity Model', 'Image', 'Lightcurves', 'Map', 'Meteorology', 'Null Result', 'Occultation', 'Photometry', 'Physical Parameters', 'Polarimetry', 'Radiometry', 'Reference', 'Shape Model', 'Spectrum')">
        The attribute pds:type must be equal to one of the following values 'Altimetry', 'Astrometry', 'Count', 'E/B-Field Vectors', 'Gravity Model', 'Image', 'Lightcurves', 'Map', 'Meteorology', 'Null Result', 'Occultation', 'Photometry', 'Physical Parameters', 'Polarimetry', 'Radiometry', 'Reference', 'Shape Model', 'Spectrum'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Primary_Result_Summary/pds:type" role="warning">
      <sch:assert test="false()">
        pds:Primary_Result_Summary/pds:type is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_AIP/pds:Information_Package_Component/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('package_has_collection', 'package_has_bundle', 'package_has_product', 'package_compiled_from_package')">
        The attribute reference_type must be set to one of the following values 'package_has_collection', 'package_has_bundle', 'package_has_product', 'package_compiled_from_package'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Browse/pds:Reference_List/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('browse_to_data', 'browse_to_thumbnail')">
        The attribute reference_type must be set to one of the following values 'browse_to_data', 'browse_to_thumbnail'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Bundle/pds:Context_Area/pds:Investigation_Area/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('bundle_to_investigation')">
        The attribute reference_type must be set to one of the following values 'bundle_to_investigation'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Bundle/pds:Identification_Area">
      <sch:assert test="pds:Citation_Information/pds:description">
        In Product_Bundle both Citation_Information and its description are required.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Bundle/pds:Identification_Area/pds:logical_identifier">
      <sch:let name="num_colons" value="string-length(.) - string-length(translate(., ':', ''))"/>
      <sch:let name="required_colons" value="3"/>
      <sch:assert test="$num_colons eq $required_colons">
        In Product_Bundle, the number of colons found: (<sch:value-of select="$num_colons"/>) is inconsistent with the number expected: (<sch:value-of select="$required_colons"/>).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Bundle/pds:Reference_List/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('bundle_to_errata', 'bundle_to_document', 'bundle_to_investigation', 'bundle_to_instrument', 'bundle_to_instrument_host', 'bundle_to_target', 'bundle_to_resource', 'bundle_to_associate')">
        The attribute reference_type must be set to one of the following values 'bundle_to_errata', 'bundle_to_document', 'bundle_to_investigation', 'bundle_to_instrument', 'bundle_to_instrument_host', 'bundle_to_target', 'bundle_to_resource', 'bundle_to_associate'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Collection/pds:Context_Area/pds:Investigation_Area/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('collection_to_investigation')">
        The attribute reference_type must be set to one of the following values 'collection_to_investigation'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Collection/pds:Identification_Area">
      <sch:assert test="pds:Citation_Information/pds:description">
        In Product_Collection both Citation_Information and its description are required.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Collection/pds:Identification_Area/pds:logical_identifier">
      <sch:let name="num_colons" value="string-length(.) - string-length(translate(., ':', ''))"/>
      <sch:let name="required_colons" value="4"/>
      <sch:assert test="$num_colons eq $required_colons">
        In Product_Collection, the number of colons found: (<sch:value-of select="$num_colons"/>) is inconsistent with the number expected: (<sch:value-of select="$required_colons"/>).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Collection/pds:Reference_List/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('collection_to_resource', 'collection_to_associate', 'collection_to_calibration', 'collection_to_geometry', 'collection_to_spice_kernel', 'collection_curated_by_node', 'collection_to_document', 'collection_to_browse', 'collection_to_context', 'collection_to_data', 'collection_to_schema', 'collection_to_errata', 'collection_to_bundle', 'collection_to_personnel', 'collection_to_investigation', 'collection_to_instrument', 'collection_to_instrument_host', 'collection_to_target')">
        The attribute reference_type must be set to one of the following values 'collection_to_resource', 'collection_to_associate', 'collection_to_calibration', 'collection_to_geometry', 'collection_to_spice_kernel', 'collection_curated_by_node', 'collection_to_document', 'collection_to_browse', 'collection_to_context', 'collection_to_data', 'collection_to_schema', 'collection_to_errata', 'collection_to_bundle', 'collection_to_personnel', 'collection_to_investigation', 'collection_to_instrument', 'collection_to_instrument_host', 'collection_to_target'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Context/pds:Reference_List/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('context_to_associate', 'instrument_to_document', 'instrument_to_instrument_host', 'instrument_host_to_document', 'instrument_host_to_instrument', 'instrument_host_to_investigation', 'instrument_host_to_target', 'investigation_to_document', 'investigation_to_instrument', 'investigation_to_instrument_host', 'investigation_to_target', 'node_to_personnel', 'node_to_agency', 'node_to_manager', 'node_to_operator', 'node_to_data_archivist', 'resource_to_instrument', 'resource_to_instrument_host', 'resource_to_investigation', 'resource_to_target', 'target_to_document', 'target_to_instrument', 'target_to_instrument_host', 'target_to_investigation')">
        The attribute reference_type must be set to one of the following values 'context_to_associate', 'instrument_to_document', 'instrument_to_instrument_host', 'instrument_host_to_document', 'instrument_host_to_instrument', 'instrument_host_to_investigation', 'instrument_host_to_target', 'investigation_to_document', 'investigation_to_instrument', 'investigation_to_instrument_host', 'investigation_to_target', 'node_to_personnel', 'node_to_agency', 'node_to_manager', 'node_to_operator', 'node_to_data_archivist', 'resource_to_instrument', 'resource_to_instrument_host', 'resource_to_investigation', 'resource_to_target', 'target_to_document', 'target_to_instrument', 'target_to_instrument_host', 'target_to_investigation'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_DIP/pds:Information_Package_Component/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('package_has_collection', 'package_has_bundle', 'package_has_product', 'package_compiled_from_package')">
        The attribute reference_type must be set to one of the following values 'package_has_collection', 'package_has_bundle', 'package_has_product', 'package_compiled_from_package'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_DIP_Deep_Archive/pds:Information_Package_Component/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('package_has_collection', 'package_has_bundle', 'package_has_product', 'package_compiled_from_package')">
        The attribute reference_type must be set to one of the following values 'package_has_collection', 'package_has_bundle', 'package_has_product', 'package_compiled_from_package'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Document/pds:Context_Area/pds:Investigation_Area/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('document_to_investigation')">
        The attribute reference_type must be set to one of the following values 'document_to_investigation'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Document/pds:Context_Area/pds:Target_Identification/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('document_to_target')">
        The attribute reference_type must be set to one of the following values 'document_to_target'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Document/pds:Identification_Area">
      <sch:assert test="pds:Citation_Information/pds:description">
        In Product_Document both Citation_Information and its description are required.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Document/pds:Reference_List/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('document_to_associate', 'document_to_investigation', 'document_to_instrument_host', 'document_to_instrument', 'document_to_target')">
        The attribute reference_type must be set to one of the following values 'document_to_associate', 'document_to_investigation', 'document_to_instrument_host', 'document_to_instrument', 'document_to_target'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_File_Text/pds:Identification_Area">
      <sch:assert test="pds:Citation_Information/pds:description">
        In Product_File_Text both Citation_Information and its description are required.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Native/pds:Reference_List/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('described_by_document')">
        The attribute reference_type must be set to one of the following values 'described_by_document'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Observational/pds:Observation_Area/pds:Investigation_Area/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('data_to_investigation')">
        The attribute reference_type must be set to one of the following values 'data_to_investigation'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Observational/pds:Observation_Area/pds:Target_Identification/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('data_to_target', 'collection_to_target', 'bundle_to_target', 'document_to_target')">
        The attribute reference_type must be set to one of the following values 'data_to_target', 'collection_to_target', 'bundle_to_target', 'document_to_target'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Observational/pds:Reference_List/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('data_to_associate', 'data_to_resource', 'data_to_calibration_document', 'data_to_calibration_product', 'data_to_raw_product', 'data_to_calibrated_product', 'data_to_derived_product', 'data_to_geometry', 'data_to_spice_kernel', 'data_to_thumbnail', 'data_to_document', 'data_curated_by_node', 'data_to_browse', 'data_to_ancillary_data')">
        The attribute reference_type must be set to one of the following values 'data_to_associate', 'data_to_resource', 'data_to_calibration_document', 'data_to_calibration_product', 'data_to_raw_product', 'data_to_calibrated_product', 'data_to_derived_product', 'data_to_geometry', 'data_to_spice_kernel', 'data_to_thumbnail', 'data_to_document', 'data_curated_by_node', 'data_to_browse', 'data_to_ancillary_data'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_SIP/pds:Information_Package_Component/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('package_has_collection', 'package_has_bundle', 'package_has_product')">
        The attribute reference_type must be set to one of the following values 'package_has_collection', 'package_has_bundle', 'package_has_product'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_SIP_Deep_Archive/pds:Information_Package_Component_Deep_Archive/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('package_has_bundle')">
        The attribute reference_type must be set to one of the following values 'package_has_bundle'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_SPICE_Kernel/pds:Context_Area">
      <sch:assert test="(pds:Time_Coordinates and pds:Investigation_Area and pds:Target_Identification and pds:Observing_System)">
        In Product_SPICE_Kernel the Time_Coordinates, Investigation_Area, Target_Identification, and Observing_System classes must be present</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Zipped/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('zip_to_package')">
        The attribute reference_type must be set to one of the following values 'zip_to_package'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Quaternion/pds:type">
      <sch:assert test=". = ('SPICE', 'Spacecraft Telemetry')">
        The attribute pds:type must be equal to one of the following values 'SPICE', 'Spacecraft Telemetry'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Quaternion_Component/pds:data_type">
      <sch:assert test=". = ('ASCII_Real')">
        The attribute pds:data_type must be equal to the value 'ASCII_Real'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Record_Binary">
      <sch:let name="num_fields" value="(pds:fields)"/>
      <sch:let name="num_groups" value="(pds:groups)"/>
      <sch:assert test="$num_fields > '0' or $num_groups > '0'">
        The values for 'fields' and 'groups' must not both be '0'.  The number of fields found: (<sch:value-of select="$num_fields"/>).  The number of groups found: (<sch:value-of select="$num_groups"/>).</sch:assert>
      <sch:assert test="$num_fields = count(pds:Field_Binary)">
        The number of Field_Binary elements (<sch:value-of select="count(pds:Field_Binary)"/>) does not match the number found in the 'fields' attribute (<sch:value-of select="$num_fields"/>).</sch:assert>
      <sch:assert test="$num_groups = count(pds:Group_Field_Binary)">
        The number of Group_Field_Binary elements (<sch:value-of select="count(pds:Group_Field_Binary)"/>) does not match the number found in the 'groups' attribute (<sch:value-of select="$num_groups"/>).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Record_Binary/pds:record_length">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Record_Character">
      <sch:let name="num_fields" value="(pds:fields)"/>
      <sch:let name="num_groups" value="(pds:groups)"/>
      <sch:assert test="$num_fields > '0' or $num_groups > '0'">
        The values for 'fields' and 'groups' must not both be '0'.  The number of fields found: (<sch:value-of select="$num_fields"/>).  The number of groups found: (<sch:value-of select="$num_groups"/>).</sch:assert>
      <sch:assert test="$num_fields = count(pds:Field_Character)">
        The number of Field_Character elements (<sch:value-of select="count(pds:Field_Character)"/>) does not match the number found in the 'fields' attribute (<sch:value-of select="$num_fields"/>).</sch:assert>
      <sch:assert test="$num_groups = count(pds:Group_Field_Character)">
        The number of Group_Field_Character elements (<sch:value-of select="count(pds:Group_Field_Character)"/>) does not match the number found in the 'groups' attribute (<sch:value-of select="$num_groups"/>).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Record_Character/pds:record_length">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Record_Delimited">
      <sch:let name="num_fields" value="(pds:fields)"/>
      <sch:let name="num_groups" value="(pds:groups)"/>
      <sch:assert test="$num_fields > '0' or $num_groups > '0'">
        The values for 'fields' and 'groups' must not both be '0'.  The number of fields found: (<sch:value-of select="$num_fields"/>).  The number of groups found: (<sch:value-of select="$num_groups"/>).</sch:assert>
      <sch:assert test="$num_fields = count(pds:Field_Delimited)">
        The number of Field_Delimited elements (<sch:value-of select="count(pds:Field_Delimited)"/>) does not match the number found in the 'fields' attribute (<sch:value-of select="$num_fields"/>).</sch:assert>
      <sch:assert test="$num_groups = count(pds:Group_Field_Delimited)">
        The number of Group_Field_Delimited elements (<sch:value-of select="count(pds:Group_Field_Delimited)"/>) does not match the number found in the 'groups' attribute (<sch:value-of select="$num_groups"/>).</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Record_Delimited/pds:maximum_record_length">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Resource/pds:type">
      <sch:assert test=". = ('Information.Agency', 'Information.Instrument', 'Information.Instrument_Host', 'Information.Investigation', 'Information.Node', 'Information.Person', 'Information.Resource', 'Information.Science_Portal', 'Information.Target', 'System.Browse', 'System.Directory_Listing', 'System.Registry_Query', 'System.Search', 'System.Transform', 'System.Transport')">
        The attribute pds:type must be equal to one of the following values 'Information.Agency', 'Information.Instrument', 'Information.Instrument_Host', 'Information.Investigation', 'Information.Node', 'Information.Person', 'Information.Resource', 'Information.Science_Portal', 'Information.Target', 'System.Browse', 'System.Directory_Listing', 'System.Registry_Query', 'System.Search', 'System.Transform', 'System.Transport'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:SPICE_Kernel/pds:encoding_type">
      <sch:assert test=". = ('Binary', 'Character')">
        The attribute pds:encoding_type must be equal to one of the following values 'Binary', 'Character'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:SPICE_Kernel/pds:kernel_type">
      <sch:assert test=". = ('CK', 'DBK', 'DSK', 'EK', 'FK', 'IK', 'LSK', 'MK', 'PCK', 'SCLK', 'SPK')">
        The attribute pds:kernel_type must be equal to one of the following values 'CK', 'DBK', 'DSK', 'EK', 'FK', 'IK', 'LSK', 'MK', 'PCK', 'SCLK', 'SPK'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:SPICE_Kernel/pds:parsing_standard_id">
      <sch:assert test=". = ('SPICE')">
        The attribute pds:parsing_standard_id must be equal to the value 'SPICE'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Science_Facets/pds:domain">
      <sch:assert test=". = ('Atmosphere', 'Heliosphere', 'Interior', 'Interstellar', 'Ionosphere', 'Magnetosphere', 'Surface')">
        The attribute pds:domain must be equal to one of the following values 'Atmosphere', 'Heliosphere', 'Interior', 'Interstellar', 'Ionosphere', 'Magnetosphere', 'Surface'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Science_Facets/pds:wavelength_range">
      <sch:assert test=". = ('Far Infrared', 'Gamma Ray', 'Infrared', 'Microwave', 'Millimeter', 'Near Infrared', 'Radio', 'Submillimeter', 'Ultraviolet', 'Visible', 'X-ray')">
        The attribute pds:wavelength_range must be equal to one of the following values 'Far Infrared', 'Gamma Ray', 'Infrared', 'Microwave', 'Millimeter', 'Near Infrared', 'Radio', 'Submillimeter', 'Ultraviolet', 'Visible', 'X-ray'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Service_Description/pds:parsing_standard_id">
      <sch:assert test=". = ('WADL', 'WSDL 2.n')">
        The attribute pds:parsing_standard_id must be equal to one of the following values 'WADL', 'WSDL 2.n'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Software/pds:version_id" role="warning">
      <sch:assert test="false()">
        pds:Software/pds:version_id is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Stream_Text" role="warning">
      <sch:assert test="pds:record_delimiter != 'carriage-return line-feed'">
        The value carriage-return line-feed for attribute Stream_Text.record_delimiter is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Stream_Text/pds:record_delimiter">
      <sch:assert test=". = ('Carriage-Return Line-Feed', 'carriage-return line-feed')">
        The attribute pds:record_delimiter must be equal to one of the following values 'Carriage-Return Line-Feed', 'carriage-return line-feed'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Table_Base/pds:offset">
      <sch:assert test="@unit = ('byte')">
        The attribute @unit must be equal to one of the following values 'byte'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Table_Character" role="warning">
      <sch:assert test="pds:record_delimiter != 'carriage-return line-feed'">
        The value carriage-return line-feed for attribute Table_Character.record_delimiter is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Table_Character/pds:record_delimiter">
      <sch:assert test=". = ('Carriage-Return Line-Feed', 'carriage-return line-feed')">
        The attribute pds:record_delimiter must be equal to one of the following values 'Carriage-Return Line-Feed', 'carriage-return line-feed'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Table_Delimited" role="warning">
      <sch:assert test="pds:record_delimiter != 'carriage-return line-feed'">
        The value carriage-return line-feed for attribute Table_Delimited.record_delimiter is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:field_delimiter != 'comma'">
        The value comma for attribute Table_Delimited.field_delimiter is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:field_delimiter != 'horizontal tab'">
        The value horizontal tab for attribute Table_Delimited.field_delimiter is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:field_delimiter != 'semicolon'">
        The value semicolon for attribute Table_Delimited.field_delimiter is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:field_delimiter != 'vertical bar'">
        The value vertical bar for attribute Table_Delimited.field_delimiter is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Table_Delimited/pds:field_delimiter">
      <sch:assert test=". = ('Comma', 'Horizontal Tab', 'Semicolon', 'Vertical Bar', 'comma', 'horizontal tab', 'semicolon', 'vertical bar')">
        The attribute pds:field_delimiter must be equal to one of the following values 'Comma', 'Horizontal Tab', 'Semicolon', 'Vertical Bar', 'comma', 'horizontal tab', 'semicolon', 'vertical bar'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Table_Delimited/pds:parsing_standard_id">
      <sch:assert test=". = ('PDS DSV 1')">
        The attribute pds:parsing_standard_id must be equal to the value 'PDS DSV 1'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Table_Delimited/pds:record_delimiter">
      <sch:assert test=". = ('Carriage-Return Line-Feed', 'carriage-return line-feed')">
        The attribute pds:record_delimiter must be equal to one of the following values 'Carriage-Return Line-Feed', 'carriage-return line-feed'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Target/pds:type">
      <sch:assert test=". = ('Asteroid', 'Comet', 'Dust', 'Dwarf Planet', 'Galaxy', 'Globular Cluster', 'Meteorite', 'Meteoroid', 'Meteoroid Stream', 'Nebula', 'Open Cluster', 'Planet', 'Planetary Nebula', 'Planetary System', 'Plasma Cloud', 'Plasma Stream', 'Ring', 'Satellite', 'Star', 'Star Cluster', 'Sun', 'Terrestrial Sample', 'Trans-Neptunian Object')">
        The attribute pds:type must be equal to one of the following values 'Asteroid', 'Comet', 'Dust', 'Dwarf Planet', 'Galaxy', 'Globular Cluster', 'Meteorite', 'Meteoroid', 'Meteoroid Stream', 'Nebula', 'Open Cluster', 'Planet', 'Planetary Nebula', 'Planetary System', 'Plasma Cloud', 'Plasma Stream', 'Ring', 'Satellite', 'Star', 'Star Cluster', 'Sun', 'Terrestrial Sample', 'Trans-Neptunian Object'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Target_Identification/pds:type">
      <sch:assert test=". = ('Asteroid', 'Calibration', 'Comet', 'Dust', 'Dwarf Planet', 'Galaxy', 'Globular Cluster', 'Meteorite', 'Meteoroid', 'Meteoroid Stream', 'Nebula', 'Open Cluster', 'Planet', 'Planetary Nebula', 'Planetary System', 'Plasma Cloud', 'Plasma Stream', 'Ring', 'Satellite', 'Star', 'Star Cluster', 'Sun', 'Terrestrial Sample', 'Trans-Neptunian Object')">
        The attribute pds:type must be equal to one of the following values 'Asteroid', 'Calibration', 'Comet', 'Dust', 'Dwarf Planet', 'Galaxy', 'Globular Cluster', 'Meteorite', 'Meteoroid', 'Meteoroid Stream', 'Nebula', 'Open Cluster', 'Planet', 'Planetary Nebula', 'Planetary System', 'Plasma Cloud', 'Plasma Stream', 'Ring', 'Satellite', 'Star', 'Star Cluster', 'Sun', 'Terrestrial Sample', 'Trans-Neptunian Object'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Telescope" role="warning">
      <sch:assert test="pds:coordinate_source != 'Aerial survey - North American (1983) datum'">
        The value Aerial survey - North American (1983) datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Adindan datum'">
        The value Geodetic - Adindan datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Australian datum'">
        The value Geodetic - Australian datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Campo Inchauspe (Argentina) datum'">
        The value Geodetic - Campo Inchauspe (Argentina) datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Cape (South Africa) datum'">
        The value Geodetic - Cape (South Africa) datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Corregio Alegre (Brazil) datum'">
        The value Geodetic - Corregio Alegre (Brazil) datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - datum unknown'">
        The value Geodetic - datum unknown for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - European 1979 datum'">
        The value Geodetic - European 1979 datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - European datum'">
        The value Geodetic - European datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - GRS 80 datum'">
        The value Geodetic - GRS 80 datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Hermannskogel datum'">
        The value Geodetic - Hermannskogel datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Indian datum'">
        The value Geodetic - Indian datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - La Canoa (Venezuela) datum'">
        The value Geodetic - La Canoa (Venezuela) datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - New Zealand datum'">
        The value Geodetic - New Zealand datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - North American (1927) datum'">
        The value Geodetic - North American (1927) datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Old Hawaiian datum'">
        The value Geodetic - Old Hawaiian datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Ordnance Survey of Great Britain (1936) datum'">
        The value Geodetic - Ordnance Survey of Great Britain (1936) datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Ordnance Survey of Great Britain (SN) 1980 datum'">
        The value Geodetic - Ordnance Survey of Great Britain (SN) 1980 datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Potsdam datum'">
        The value Geodetic - Potsdam datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Puerto Rican (1940) datum'">
        The value Geodetic - Puerto Rican (1940) datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - South American datum'">
        The value Geodetic - South American datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - Tokyo datum'">
        The value Geodetic - Tokyo datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Geodetic - WGS 84 datum'">
        The value Geodetic - WGS 84 datum for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
      <sch:assert test="pds:coordinate_source != 'Satellite determined - datum unknown'">
        The value Satellite determined - datum unknown for attribute Telescope.coordinate_source is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Telescope/pds:altitude">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Telescope/pds:aperture">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Telescope/pds:coordinate_source">
      <sch:assert test=". = ('Aerial Survey - North American (1983) Datum', 'Astronomical', 'Doppler determined - WGS 72 Datum', 'Geodetic - Adindan Datum', 'Geodetic - Australian Datum', 'Geodetic - Campo Inchauspe (Argentina) Datum', 'Geodetic - Cape (South Africa) Datum', 'Geodetic - Corregio Alegre (Brazil) Datum', 'Geodetic - Datum Unknown', 'Geodetic - European 1979 Datum', 'Geodetic - European Datum', 'Geodetic - GRS 80 Datum', 'Geodetic - Hermannskogel Datum', 'Geodetic - Indian Datum', 'Geodetic - La Canoa (Venezuela) Datum', 'Geodetic - New Zealand Datum', 'Geodetic - North American (1927) Datum', 'Geodetic - Old Hawaiian Datum', 'Geodetic - Ordnance Survey of Great Britain (1936) Datum', 'Geodetic - Ordnance Survey of Great Britain (SN) 1980 Datum', 'Geodetic - Potsdam Datum', 'Geodetic - Puerto Rican (1940) Datum', 'Geodetic - South American Datum', 'Geodetic - Tokyo Datum', 'Geodetic - WGS 84 Datum', 'Satellite Determined - Datum Unknown', 'Unknown')">
        The attribute pds:coordinate_source must be equal to one of the following values 'Aerial Survey - North American (1983) Datum', 'Astronomical', 'Doppler determined - WGS 72 Datum', 'Geodetic - Adindan Datum', 'Geodetic - Australian Datum', 'Geodetic - Campo Inchauspe (Argentina) Datum', 'Geodetic - Cape (South Africa) Datum', 'Geodetic - Corregio Alegre (Brazil) Datum', 'Geodetic - Datum Unknown', 'Geodetic - European 1979 Datum', 'Geodetic - European Datum', 'Geodetic - GRS 80 Datum', 'Geodetic - Hermannskogel Datum', 'Geodetic - Indian Datum', 'Geodetic - La Canoa (Venezuela) Datum', 'Geodetic - New Zealand Datum', 'Geodetic - North American (1927) Datum', 'Geodetic - Old Hawaiian Datum', 'Geodetic - Ordnance Survey of Great Britain (1936) Datum', 'Geodetic - Ordnance Survey of Great Britain (SN) 1980 Datum', 'Geodetic - Potsdam Datum', 'Geodetic - Puerto Rican (1940) Datum', 'Geodetic - South American Datum', 'Geodetic - Tokyo Datum', 'Geodetic - WGS 84 Datum', 'Satellite Determined - Datum Unknown', 'Unknown'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Telescope/pds:telescope_latitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Telescope/pds:telescope_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Terminological_Entry">
      <sch:assert test="if (pds:preferred_flag) then pds:preferred_flag = ('true', 'false') else true()">
        The attribute pds:preferred_flag must be equal to one of the following values 'true', 'false'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Terminological_Entry/pds:language">
      <sch:assert test=". = ('English', 'Russian')">
        The attribute pds:language must be equal to one of the following values 'English', 'Russian'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Time_Coordinates/pds:solar_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Transfer_Manifest" role="warning">
      <sch:assert test="pds:record_delimiter != 'carriage-return line-feed'">
        The value carriage-return line-feed for attribute Transfer_Manifest.record_delimiter is deprecated and should not be used.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Transfer_Manifest/pds:record_delimiter">
      <sch:assert test=". = ('Carriage-Return Line-Feed', 'carriage-return line-feed')">
        The attribute pds:record_delimiter must be equal to one of the following values 'Carriage-Return Line-Feed', 'carriage-return line-feed'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Uniformly_Sampled/pds:sampling_parameter_scale">
      <sch:assert test=". = ('Exponential', 'Linear', 'Logarithmic')">
        The attribute pds:sampling_parameter_scale must be equal to one of the following values 'Exponential', 'Linear', 'Logarithmic'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Update_Entry/pds:Internal_Reference">
      <sch:assert test="every $ref in (pds:reference_type) satisfies $ref = ('data_to_update', 'collection_to_update', 'bundle_to_update')">
        The attribute reference_type must be set to one of the following values 'data_to_update', 'collection_to_update', 'bundle_to_update'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Vector/pds:data_type">
      <sch:assert test=". = ('ASCII_Real')">
        The attribute pds:data_type must be equal to the value 'ASCII_Real'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Vector/pds:reference_frame_id">
      <sch:assert test=". = ('ICRF', 'MOON_ME_DE421')">
        The attribute pds:reference_frame_id must be equal to one of the following values 'ICRF', 'MOON_ME_DE421'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Vector/pds:type">
      <sch:assert test=". = ('Acceleration', 'Pointing', 'Position', 'Velocity')">
        The attribute pds:type must be equal to one of the following values 'Acceleration', 'Pointing', 'Position', 'Velocity'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Vector_Cartesian_3/pds:reference_frame_id">
      <sch:assert test=". = ('ICRF', 'MOON_ME_DE421')">
        The attribute pds:reference_frame_id must be equal to one of the following values 'ICRF', 'MOON_ME_DE421'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Vector_Cartesian_3_Acceleration/pds:reference_frame_id">
      <sch:assert test=". = ('ICRF', 'MOON_ME_DE421')">
        The attribute pds:reference_frame_id must be equal to one of the following values 'ICRF', 'MOON_ME_DE421'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Vector_Cartesian_3_Pointing/pds:reference_frame_id">
      <sch:assert test=". = ('ICRF', 'MOON_ME_DE421')">
        The attribute pds:reference_frame_id must be equal to one of the following values 'ICRF', 'MOON_ME_DE421'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Vector_Cartesian_3_Position/pds:reference_frame_id">
      <sch:assert test=". = ('ICRF', 'MOON_ME_DE421')">
        The attribute pds:reference_frame_id must be equal to one of the following values 'ICRF', 'MOON_ME_DE421'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Vector_Cartesian_3_Velocity/pds:reference_frame_id">
      <sch:assert test=". = ('ICRF', 'MOON_ME_DE421')">
        The attribute pds:reference_frame_id must be equal to one of the following values 'ICRF', 'MOON_ME_DE421'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Volume_PDS3/pds:archive_status">
      <sch:assert test=". = ('ARCHIVED', 'ARCHIVED_ACCUMULATING', 'IN_LIEN_RESOLUTION', 'IN_LIEN_RESOLUTION_ACCUMULATING', 'IN_PEER_REVIEW', 'IN_PEER_REVIEW_ACCUMULATING', 'IN_QUEUE', 'IN_QUEUE_ACCUMULATING', 'LOCALLY_ARCHIVED', 'LOCALLY_ARCHIVED_ACCUMULATING', 'PRE_PEER_REVIEW', 'PRE_PEER_REVIEW_ACCUMULATING', 'SAFED', 'SUPERSEDED')">
        The attribute pds:archive_status must be equal to one of the following values 'ARCHIVED', 'ARCHIVED_ACCUMULATING', 'IN_LIEN_RESOLUTION', 'IN_LIEN_RESOLUTION_ACCUMULATING', 'IN_PEER_REVIEW', 'IN_PEER_REVIEW_ACCUMULATING', 'IN_QUEUE', 'IN_QUEUE_ACCUMULATING', 'LOCALLY_ARCHIVED', 'LOCALLY_ARCHIVED_ACCUMULATING', 'PRE_PEER_REVIEW', 'PRE_PEER_REVIEW_ACCUMULATING', 'SAFED', 'SUPERSEDED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:XML_Schema">
      <sch:assert test="pds:offset eq '0'">
        XML_Schema.offset must have a value of '0'</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:XML_Schema/pds:parsing_standard_id">
      <sch:assert test=". = ('Schematron ISO/IEC 19757-3:2006', 'XML Schema Version 1.1')">
        The attribute pds:parsing_standard_id must be equal to one of the following values 'Schematron ISO/IEC 19757-3:2006', 'XML Schema Version 1.1'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Zip/pds:container_type">
      <sch:assert test=". = ('GZIP', 'LZIP', 'TAR', 'ZIP')">
        The attribute pds:container_type must be equal to one of the following values 'GZIP', 'LZIP', 'TAR', 'ZIP'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
