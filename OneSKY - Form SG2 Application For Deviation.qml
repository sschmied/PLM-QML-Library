<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE qml SYSTEM "/wt/query/qml/qml.dtd">
<qml bypassAccessControl="true">
    <statement>
        <query>
            <select distinct="true" group="true">
                <object alias="Form SG2 Application For Deviation"
                    heading="Form SG2 Application For Deviation Applicant's reference no." propertyName=""/>
                <column alias="Form SG2 Application For Deviation"
                    heading="QAR Authority reference no." type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_13</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="SG2 Title" propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="Applicant requests decision by"
                    propertyName="needDate" type="java.sql.Timestamp">needDate</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="State" propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Name and Address of Applicant" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_14</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Contract Or Order No" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_15</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Main Item or Assembly" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_16</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Component" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_17</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Relevant Documentation" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_18</column>
                <column alias="Document" heading="Document Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Document" heading="Document Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Specification No" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_24</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Part Identification No" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_25</column>
                <column alias="Part" heading="Part Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Part" heading="Part Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Batch lot or reference" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_26</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Period or quantity involved" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_27</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY Deviation Affected Serial Numbers" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_12</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="Description of deviation"
                    propertyName="description" type="java.lang.String">description</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Effect Of Deviation Interchangability" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_28</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Effect Of Deviation Strength" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_29</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Effect Of Deviation Quality Control" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_3</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Effect Of Deviation Maintainability" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_30</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Effect Of Deviation Environmental compliance" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_35</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Effect Of Deviation Function" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_31</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Effect Of Deviation Safety" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_32</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Effect Of Deviation Life" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_33</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Effect Of Deviation Weight" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_34</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Price Variation" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_22</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Delivery Variation" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_23</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Effect Of Deviation Other Are there other critical issues which are not listed?" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_66</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Is permanent design change proposed?" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_37</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Applicant's Design Department Signed" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_38</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Applicant's Design Department Printed Name" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_39</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Applicant's Design Department Appointment" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_4</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Applicant's Design Department Phone Number" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_40</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Applicant's Design Department Signature Date" type="java.sql.Timestamp">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_tms_1</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Applicant's Design Department Proposed corrective action for deviation application" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_41</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Applicant's Design Department Proposed action to prevent recurrence" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_42</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Agreed By Applicant Signed" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_43</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Agreed By Applicant Printed Name" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_44</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Agreed By Applicant Appointment" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_45</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Agreed By Applicant Phone Number" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_46</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Agreed By Applicant Signature Date" type="java.sql.Timestamp">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_tms_2</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 QAR General Comments" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_19</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 QAR Application referred to" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~IBA|local.thalesgroup.au.OneSKY_SG2_Referred_To</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 QAR For Information provided to CA" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_47</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Part2 QAR Signed" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_48</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Part2 QAR Printed Name" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_49</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Part2 QAR Appointment" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_5</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Part2 QAR Phone Number" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_50</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Part2 QAR Signature Date" type="java.sql.Timestamp">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_tms_3</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 User Authority Endorsement" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_2</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 User Authority Signed" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_6</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 User Authority Printed Name" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_7</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 User Authority Appointment" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_8</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 User Authority Phone Number" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_9</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 User Authority Signature Date" type="java.sql.Timestamp">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_tms_4</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Category" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_11</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 DAA Need For Permanent Design Change Is Agreed?" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_51</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 DAA Return To Agreed Specification By" type="java.sql.Timestamp">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_tms_6</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 DAA Comments" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_52</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 DAA Technical Endorsement" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_53</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 DAA Signed" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_54</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 DAA Printed Name" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_55</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 DAA Appointment" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_56</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 DAA Phone Number" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_57</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 DAA Signature Date" type="java.sql.Timestamp">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_tms_5</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Contract Authority Approval" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_21</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Contract Authority CCP and/or ECP action has been initiated" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~IBA|local.thalesgroup.au.OneSKY_SG2_CCP_ECP</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Contract Authority Approval Signed" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_58</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Contract Authority Approval Printed Name" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_59</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Contract Authority Approval Appointment" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_60</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Contract Authority Approval Phone Number" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_61</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Contract Authority Approval Signature Date" type="java.sql.Timestamp">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_tms_7</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Part6 QAR Signed" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_62</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Part6 QAR Printed Name" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_63</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Part6 QAR Appointment" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_64</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Part6 QAR Phone Number" type="java.lang.String">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation~MBA|typeInfoWTVariance.ptc_str_65</column>
                <column alias="Form SG2 Application For Deviation"
                    heading="OneSKY SG2 Part 6 QAR Signature Date"
                    propertyName="resolutionDate" type="java.sql.Timestamp">resolutionDate</column>
            </select>
            <from>
                <table alias="Form SG2 Application For Deviation">WCTYPE|wt.change2.WTVariance|com.ptc.Deviation</table>
                <table alias="Document" outerJoinAlias="Form SG2 Application For Deviation">wt.doc.WTDocument</table>
                <table alias="Part" outerJoinAlias="Form SG2 Application For Deviation">wt.part.WTPart</table>
            </from>
            <where>
                <compositeCondition type="and">
                    <compositeCondition type="or">
                        <condition>
                            <operand>
                                <column alias="Document"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <operator type="equal"/>
                            <operand>
                                <constant heading="1" isMacro="false"
                                    type="java.lang.Object" xml:space="preserve">1</constant>
                            </operand>
                        </condition>
                        <condition>
                            <operand>
                                <column alias="Document"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <nullOperator type="isNull"/>
                        </condition>
                    </compositeCondition>
                    <compositeCondition type="or">
                        <condition>
                            <operand>
                                <column alias="Part"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <operator type="equal"/>
                            <operand>
                                <constant heading="1" isMacro="false"
                                    type="java.lang.Object" xml:space="preserve">1</constant>
                            </operand>
                        </condition>
                        <condition>
                            <operand>
                                <column alias="Part"
                                    heading="Iteration (iterationInfo).Latest"
                                    propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                            </operand>
                            <nullOperator type="isNull"/>
                        </condition>
                    </compositeCondition>
                </compositeCondition>
            </where>
            <linkJoin>
                <join name="wt.change2.ReportedAgainst">
                    <aliasTarget alias="Form SG2 Application For Deviation"/>
                    <aliasTarget alias="Document"/>
                </join>
                <join name="wt.change2.ReportedAgainst">
                    <aliasTarget alias="Form SG2 Application For Deviation"/>
                    <aliasTarget alias="Part"/>
                </join>
            </linkJoin>
        </query>
    </statement>
</qml>
