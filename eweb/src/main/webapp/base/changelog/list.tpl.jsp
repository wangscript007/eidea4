<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/inc/taglib.jsp" %>
<div  class="container-fluid" ng-controller="listCtrl">
<div class="page-header" >
</div>
<div class="row-fluid">
    <div class="span12">
        <table  class="table table-hover table-striped table-condensed">
            <thead>
            <tr>
                <th><eidea:label key="custom.list.index"/></th>
                <th><eidea:label key="searchcolumn.column.tableName"/></th>
                <th><eidea:label key="changelog.business.name"/></th>
                <th><eidea:label key="changelog.primarykey"/></th>
                 <th><eidea:label key="table.column.buskey"/></th>
                 <th><eidea:label key="changelog.actiontypes"/></th>
                 <th><eidea:label key="user.user.name"/></th>
                 <th><eidea:label key="changelog.operatetime"/></th>
                 <th><eidea:label key="officeTestExam.button.view"/></th>
            </tr>
            </thead>
            <tbody>

            <tr ng-repeat="model in modelList track by $index" ng-class-even="success">
                <td>{{(queryParams.pageNo-1)*queryParams.pageSize+$index+1}}</td>
                <td>
                    {{model.name}}
                </td>
                 <td>
                    {{model.tableName}}
                </td>
                <td>
                    {{model.pk}}
                </td>
                 <td>
                    {{model.buPk}}
                </td>
                 <td>
                    {{model.operateType}}
                </td>
                 <td>
                    {{model.sysUser}}
                </td>
                 <td>
                    {{model.inDate|date:'yyyy-MM-dd HH:mm:ss'}}
                </td>
                <td>
                	<a class="btn btn-primary btn-xs" href="#/edit?id={{model.id}}">
                        <i class="fa fa-search fa-1x" aria-hidden="true"></i>&nbsp;<eidea:label key="common.button.view"/></a>
                </td>
            </tr>
            <tr>
                <td colspan="6" class="text-center" ng-show="isLoading">
                    <i class='fa fa-spinner fa-pulse loading'></i>&nbsp;<eidea:message key="login.msg.logining"/>
                </td>
            </tr>
            </tbody>
        </table>
        <ul uib-pagination boundary-links="true" total-items="queryParams.totalRecords" ng-model="queryParams.pageNo"
            max-size="maxSize" first-text="<eidea:label key="common.label.firstpage"/>" previous-text="<eidea:label key="common.label.previouspage"/>" next-text="<eidea:label key="common.label.nextpage"/>" last-text="<eidea:label key="common.label.lastpage"/>"
            class="pagination-sm" boundary-link-numbers="true" rotate="false" items-per-page="queryParams.pageSize"
            ng-change="pageChanged()"></ul>
        <div class="text-left ng-binding padding_total_banner"><eidea:message key="common.msg.result.prefix"/><span>{{queryParams.totalRecords}}</span><eidea:message key="common.msg.result.suffix"/></div>
    </div>
</div>
</div>