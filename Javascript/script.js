var selectedRow = null;

function onFormSubmit(){
    if(validate()){
        var formData = readFormData();
        if(selectedRow == null)
            insertNewRecord(formData);
        else
            updateRecord(formData);
        resetForm();
    }
}
function readFormData(){
    var formData={};
    formData["studName"]=document.getElementById("studName").value;
    formData["studId"]=document.getElementById("studId").value;
    formData["studClass"]=document.getElementById("studClass").value;
    formData["contactNumber"]=document.getElementById("contactNumber").value;
    formData["studAddress"]=document.getElementById("studAddress").value;
    return formData;
}
function insertNewRecord(data){
    var table = document.getElementById("studentList").getElementsByTagName('tbody')[0];
    var newRow = table.insertRow(table.length);
    cell1 = newRow.insertCell(0);
    cell1.innerHTML = data.studName;
    cell2 = newRow.insertCell(1);
    cell2.innerHTML = data.studId;
    cell3 = newRow.insertCell(2);
    cell3.innerHTML = data.studClass;
    cell4 = newRow.insertCell(3);
    cell4.innerHTML = data.contactNumber;
    cell5 = newRow.insertCell(4);
    cell5.innerHTML = data.studAddress;
    cell5 = newRow.insertCell(5);
    cell5.innerHTML = `<a onClick = "onEdit(this)"> EDIT</a>
                       <a onClick = "onDelete(this)">DELETE</a>`;
}
function resetForm(){
    document.getElementById("studName").value ="";
    document.getElementById("studId").value ="";
    document.getElementById("studClass").value ="";
    document.getElementById("contactNumber").value ="";
    document.getElementById("studAddress").value ="";
    selectedRow = null;
}
function onEdit(td){
    selectedRow = td.parentElement.parentElement;
    document.getElementById("studName").value = selectedRow.cells[0].innerHTML;
    document.getElementById("studId").value = selectedRow.cells[1].innerHTML;
    document.getElementById("studClass").value = selectedRow.cells[2].innerHTML;
    document.getElementById("contactNumber").value = selectedRow.cells[3].innerHTML;
    document.getElementById("studAddress").value = selectedRow.cells[4].innerHTML;
}
function updateRecord(formData){
    selectedRow.cells[0].innerHTML = formData.studName;
    selectedRow.cells[1].innerHTML = formData.studId;
    selectedRow.cells[2].innerHTML = formData.studClass;
    selectedRow.cells[3].innerHTML = formData.contactNumber;
    selectedRow.cells[4].innerHTML = formData.studAddress;
}
function onDelete(td){
    if(confirm("Are you sure to delete this record?")){
        row = td.parentElement.parentElement;
        document.getElementById("studentList").deleteRow(row.rowIndex);
    }
}
function validate(){
    isValid = true;
    if(document.getElementById("studName").value == ""){
        isValid = false;
        document.getElementById("studNameValidationError").classList.remove("hide");
    }
    else{
        isValid = true;
        if(!document.getElementById("studNameValidationError").classList.contains("hide"))
            document.getElementById("studNameValidationError").classList.add("hide");
    }
    return isValid;
}