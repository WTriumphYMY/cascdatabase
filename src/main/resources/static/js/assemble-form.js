var url = '';
//合并单元格
$(function () {
    $('#tb_assemble').datagrid({
        url: '/findAllAssemble',
        onLoadSuccess: function (data) {
            //所有列进行合并操作
            //$(this).datagrid("autoMergeCells");
            //指定列进行合并操作(数组中写要合并的列名(field属性值))
            // $(this).datagrid("autoMergeCells", ["name","amount"]);
            if (data.rows.length > 0) {
                mergeCellsByField("tb_assemble", "name,amount");
            }
        }

    });
})

function newAssemble() {
    $('#assembleDlg').dialog('open').dialog('setTitle','新建组件');
    $('#assembleForm').form('clear');
    url = '/saveOrUpdateAssemble';
}
function editAssemble() {
    var row = $('#tb_assemble').datagrid('getSelected');
    if (row){
        $('#assembleDlg').dialog('open').dialog('setTitle','编辑组件');
        $('#assembleForm').form('load',row);
        url = '/saveOrUpdateAssemble?pkId='+row.pkId;
    }
}
function destroyAssemble() {
    var row = $('#tb_assemble').datagrid('getSelected');
    if (row){
        $.messager.confirm('确认','确认删除该条记录?',function(r){
            if (r){
                $.post('/deleteAssemble',{id:row.pkId},function(result){
                    if (result.success){
                        $('#tb_assemble').datagrid('reload');    // 重新加载数据
                        $('#tb_assemble').datagrid("autoMergeCells", ["name","amount"]);
                    } else {
                        $.messager.show({    // 显示错误信息
                            title: '错误',
                            msg: result.errorMsg
                        });
                    }
                },'json');
            }
        });
    }
}

function saveAssemble() {
    $('#assembleForm').form('submit',{
        url: url,
        onSubmit: function(){
            return $(this).form('validate');
        },
        success: function(result){
            var result = eval('('+result+')');
            if (!result.success){
                $.messager.show({
                    title: '错误',
                    msg: result.errorMsg
                });
            } else {
                $('#assembleDlg').dialog('close');        // close the dialog
                $('#tb_assemble').datagrid('reload');    // reload the user data
                $('#tb_assemble').datagrid("autoMergeCells", ["name","amount"]);
            }
        }
    });
}

/**
 * 合并单元格方法
 * @param tableID 要合并表的id
 * @param colList 要合并的列,用逗号分隔
 */
function mergeCellsByField(tableID, colList) {
    var ColArray = colList.split(",");
    var tTable = $("#" + tableID);
    var TableRowCnts = tTable.datagrid("getRows").length;
    var tmpA;
    var tmpB;
    var PerTxt = "";
    var CurTxt = "";
    for (var j = ColArray.length - 1; j >= 0; j--) {
        PerTxt = "";
        tmpA = 1;
        tmpB = 0;
        for (var i = 0; i <= TableRowCnts; i++) {
            if (i == TableRowCnts) {
                CurTxt = "";
            } else {
                CurTxt = tTable.datagrid("getRows")[i][ColArray[j]];
            }
            if (PerTxt == CurTxt && CurTxt != '1') {
                tmpA += 1;
            } else {
                tmpB += tmpA;
                tTable.datagrid("mergeCells", {
                    index : i - tmpA,
                    field : ColArray[j],
                    rowspan : tmpA,
                    colspan : null
                });
                tmpA = 1;
            }
            PerTxt = CurTxt;
        }
    }
}

