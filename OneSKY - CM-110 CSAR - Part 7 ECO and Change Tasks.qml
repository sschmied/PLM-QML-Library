<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE qml SYSTEM "/wt/query/qml/qml.dtd">
<qml>
    <statement>
        <query>
            <select>
                <column alias="Part" heading="Part Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Part" heading="Part Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column
                    alias="Change Notice (wt.change2.WTChangeOrder2)"
                    heading="ECO Number" propertyName="number" type="java.lang.String">master&gt;number</column>
                <column
                    alias="Change Notice (wt.change2.WTChangeOrder2)"
                    heading="ECO Name" propertyName="name" type="java.lang.String">master&gt;name</column>
                <column
                    alias="Change Notice (wt.change2.WTChangeOrder2)"
                    heading="ECO Description" propertyName="description" type="java.lang.String">description</column>
                <column
                    alias="Change Notice (wt.change2.WTChangeOrder2)"
                    heading="ECO State" propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column
                    alias="Change Notice (wt.change2.WTChangeOrder2)"
                    heading="ECO Resolution Date"
                    propertyName="resolutionDate" type="java.sql.Timestamp">resolutionDate</column>
                <column
                    alias="Change Task (wt.change2.WTChangeActivity2)"
                    heading="Change Task Number" propertyName="number" type="java.lang.String">master&gt;number</column>
                <column
                    alias="Change Task (wt.change2.WTChangeActivity2)"
                    heading="Change Task Name" propertyName="name" type="java.lang.String">master&gt;name</column>
                <column
                    alias="Change Task (wt.change2.WTChangeActivity2)"
                    heading="Change Task Description"
                    propertyName="description" type="java.lang.String">description</column>
                <column
                    alias="Change Task (wt.change2.WTChangeActivity2)"
                    heading="Change Task Need Date"
                    propertyName="needDate" type="java.sql.Timestamp">needDate</column>
                <column
                    alias="Change Task (wt.change2.WTChangeActivity2)"
                    heading="Change Task State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <object alias="Work Item" heading="Change Task Owner" propertyName="ownership.owner.fullName">
                    <property name="ownership">
                        <property name="owner">
                            <property name="fullName"/>
                        </property>
                    </property>
                </object>
                <column alias="Work Item"
                    heading="Change Task Owner Role" propertyName="role" type="wt.project.Role">role</column>
                <object alias="Work Item"
                    heading="Change Task Owner EMail" propertyName="ownership.owner.EMail">
                    <property name="ownership">
                        <property name="owner">
                            <property name="EMail"/>
                        </property>
                    </property>
                </object>
            </select>
            <from>
                <table alias="Change Task (wt.change2.WTChangeActivity2)">wt.change2.WTChangeActivity2</table>
                <table alias="Work Item">wt.workflow.work.WorkItem</table>
                <table alias="Change Notice (wt.change2.WTChangeOrder2)">wt.change2.WTChangeOrder2</table>
                <table alias="Part">wt.part.WTPart</table>
            </from>
            <where>
                <compositeCondition type="and">
                    <condition>
                        <operand>
                            <column
                                alias="Change Notice (wt.change2.WTChangeOrder2)"
                                heading="Iteration (iterationInfo).Latest"
                                propertyName="iterationInfo.latest" type="boolean">iterationInfo.latest</column>
                        </operand>
                        <operator type="equal"/>
                        <operand>
                            <constant heading="1" isMacro="false"
                                type="java.lang.Object" xml:space="preserve">1</constant>
                        </operand>
                    </condition>
                </compositeCondition>
            </where>
            <orderBy>
                <orderByItem>
                    <columnTarget heading="ECO Number"/>
                </orderByItem>
                <orderByItem>
                    <columnTarget heading="Change Task Number"/>
                </orderByItem>
            </orderBy>
            <linkJoin>
                <join name="wt.change2.IncludedIn2">
                    <aliasTarget alias="Change Notice (wt.change2.WTChangeOrder2)"/>
                    <aliasTarget alias="Change Task (wt.change2.WTChangeActivity2)"/>
                </join>
                <join name="wt.change2.AffectedActivityData">
                    <aliasTarget alias="Change Task (wt.change2.WTChangeActivity2)"/>
                    <aliasTarget alias="Part"/>
                </join>
            </linkJoin>
            <referenceJoin>
                <join name="primaryBusinessObject">
                    <aliasTarget alias="Work Item"/>
                    <aliasTarget alias="Change Task (wt.change2.WTChangeActivity2)"/>
                </join>
            </referenceJoin>
        </query>
    </statement>
</qml>
