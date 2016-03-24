<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE qml SYSTEM "/wt/query/qml/qml.dtd">
<qml>
    <statement>
        <query>
            <select>
                <column alias="Context" heading="Context Name"
                    propertyName="name" type="java.lang.String">containerInfo.name</column>
                <column alias="Part" heading="Part Number"
                    propertyName="number" type="java.lang.String">master&gt;number</column>
                <column alias="Part" heading="Part Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <object alias="Action Item" heading="Action Item Number" propertyName=""/>
                <column alias="Action Item" heading="Action Item Name"
                    propertyName="name" type="java.lang.String">master&gt;name</column>
                <column alias="Action Item" heading="Project" type="java.lang.String">WCTYPE|wt.change2.WTChangeIssue|local.thalesgroup.au.OneSKY_Action_Item_Chorus2~MBA|typeInfoWTChangeIssue.ptc_str_17</column>
                <column alias="Action Item" heading="Group" type="java.lang.String">WCTYPE|wt.change2.WTChangeIssue|local.thalesgroup.au.OneSKY_Action_Item_Chorus2~MBA|typeInfoWTChangeIssue.ptc_str_14</column>
                <column alias="Action Item" heading="Organisation" type="java.lang.String">WCTYPE|wt.change2.WTChangeIssue|local.thalesgroup.au.OneSKY_Action_Item_Chorus2~MBA|typeInfoWTChangeIssue.ptc_str_19</column>
                <column alias="Action Item" heading="System / Subsystem" type="java.lang.String">WCTYPE|wt.change2.WTChangeIssue|local.thalesgroup.au.OneSKY_Action_Item_Chorus2~MBA|typeInfoWTChangeIssue.ptc_str_2</column>
                <column alias="Action Item"
                    heading="Action Item Description"
                    propertyName="description" type="java.lang.String">description</column>
                <column alias="Action Item" heading="Origin" type="java.lang.String">WCTYPE|wt.change2.WTChangeIssue|local.thalesgroup.au.OneSKY_Action_Item_Chorus2~MBA|typeInfoWTChangeIssue.ptc_str_12</column>
                <column alias="Action Item" heading="Action Item Topic" type="java.lang.String">WCTYPE|wt.change2.WTChangeIssue|local.thalesgroup.au.OneSKY_Action_Item_Chorus2~MBA|typeInfoWTChangeIssue.ptc_str_13</column>
                <column alias="Action Item"
                    heading="Action Item Requirement Number" type="java.lang.String">WCTYPE|wt.change2.WTChangeIssue|local.thalesgroup.au.OneSKY_Action_Item_Chorus2~MBA|typeInfoWTChangeIssue.ptc_str_16</column>
                <column alias="Action Item" heading="Action Item State"
                    propertyName="lifeCycleState" type="wt.lifecycle.State">state.state</column>
                <column alias="Action Item"
                    heading="Action Item Date Created"
                    propertyName="createTimestamp" type="java.sql.Timestamp">thePersistInfo.createStamp</column>
                <column alias="Action Item" heading="Original Deadline"
                    propertyName="needDate" type="java.sql.Timestamp">needDate</column>
                <column alias="Action Item" heading="Updated Deadline"
                    propertyName="cycleTime" type="java.sql.Timestamp">cycleTime</column>
                <column alias="Action Item"
                    heading="Action Item Closure Date"
                    propertyName="resolutionDate" type="java.sql.Timestamp">resolutionDate</column>
                <column alias="Action Item"
                    heading="Action Item Closure Evidence" type="java.lang.String">WCTYPE|wt.change2.WTChangeIssue|local.thalesgroup.au.OneSKY_Action_Item_Chorus2~MBA|typeInfoWTChangeIssue.ptc_str_10</column>
                <column alias="Wf Assigned Activity"
                    heading="Action Item Task Name" propertyName="name" type="java.lang.String">name</column>
                <column alias="Work Item"
                    heading="Action Item Task Description"
                    propertyName="description" type="java.lang.String">description</column>
                <column alias="Work Item"
                    heading="Action Item Task Status"
                    propertyName="status" type="wt.workflow.work.WfAssignmentState">status</column>
                <column alias="Work Item"
                    heading="Action Item Task Appointment"
                    propertyName="role" type="wt.project.Role">role</column>
                <object alias="Work Item"
                    heading="Action Task Role Full Name" propertyName="ownership.owner.fullName">
                    <property name="ownership">
                        <property name="owner">
                            <property name="fullName"/>
                        </property>
                    </property>
                </object>
            </select>
            <from>
                <table alias="Action Item" outerJoinAlias="Part">WCTYPE|wt.change2.WTChangeIssue|local.thalesgroup.au.OneSKY_Action_Item_Chorus2</table>
                <table alias="Work Item">wt.workflow.work.WorkItem</table>
                <table alias="Wf Assigned Activity" outerJoinAlias="Action Item">wt.workflow.work.WfAssignedActivity</table>
                <table alias="Wf Assignment" outerJoinAlias="Action Item">wt.workflow.work.WfAssignment</table>
                <table alias="Workflow Process">wt.workflow.engine.WfProcess</table>
                <table alias="Context">wt.inf.container.WTContainer</table>
                <table alias="Part">wt.part.WTPart</table>
            </from>
            <where>
                <compositeCondition type="and">
                    <condition>
                        <operand>
                            <column alias="Action Item"
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
                    <columnTarget heading="Context Name"/>
                </orderByItem>
                <orderByItem>
                    <columnTarget heading="Project"/>
                </orderByItem>
                <orderByItem>
                    <columnTarget heading="Group"/>
                </orderByItem>
            </orderBy>
            <linkJoin>
                <join name="wt.workflow.work.ActivityAssignmentLink">
                    <aliasTarget alias="Wf Assigned Activity"/>
                    <aliasTarget alias="Wf Assignment"/>
                </join>
                <join name="wt.workflow.work.WorkItemLink">
                    <aliasTarget alias="Wf Assignment"/>
                    <aliasTarget alias="Work Item"/>
                </join>
                <join name="wt.change2.ReportedAgainst">
                    <aliasTarget alias="Action Item"/>
                    <aliasTarget alias="Part"/>
                </join>
            </linkJoin>
            <referenceJoin>
                <join name="primaryBusinessObject">
                    <aliasTarget alias="Work Item"/>
                    <aliasTarget alias="Action Item"/>
                </join>
                <join name="parentProcessRef">
                    <aliasTarget alias="Wf Assigned Activity"/>
                    <aliasTarget alias="Workflow Process"/>
                </join>
                <join name="containerReference">
                    <aliasTarget alias="Action Item"/>
                    <aliasTarget alias="Context"/>
                </join>
            </referenceJoin>
        </query>
    </statement>
</qml>
