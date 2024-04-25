const input_field = document.getElementById("input-field");
const search_btn = document.getElementById("search-btn");
const error_field = document.getElementById("error-field")
const general_info = document.getElementById("general-info");
const students_list = document.getElementById("students-list");

//const api = "http://localhost:8081/"
const api = "https://tpu-test-task-production.up.railway.app/"

search_btn.addEventListener("click",() => {
    const value = input_field.value;
    if(value !== ""){
        fetchData(api+`group?name=${value}`).then(data => renderData(data))
    }else{
        fetchData(api+`group?`).then(data => renderTable(data))
    }
})

function renderData(data){
    reset()
    const keys = Object.keys(data);
    if(keys.indexOf("message") !== -1){
        error_field.innerHTML = `<p class="error-msg">${data.message}</p>`
    }else{
        error_field.innerHTML = "";
        general_info.innerHTML= `
           <p class="group-name">Название группы: ${data.name}</p>
           <p class="group-institute">Школа: ${data.instituteName}</p>
           <p class="group-course">Курс: ${data.course}</p>
           <p class="group-admission">Год поступления: ${data.yearOfAdmission}</p>
           <p class="group-duration">Продолжительность обучения: ${data.duration}</p>
        `;
        renderTableForGroup(data.studentList)
    }
}

function renderTableForGroup(students){
    let i = 1;
    students_list.innerHTML = `
    <tr>
            <th id="id">#</th>
            <th id="name">ФИО</span></th>
            <th id="sex">Пол</th>
            <th id="status">Статус</th>
            <th id="finance">Тип финансирования</th>
    </tr>`;
    for (let student of students) {
        students_list.appendChild(generateTableRowForGroup(i++,student))
    }
}

function generateTableRowForGroup(i,student) {
    const tr = document.createElement("tr");
    const fullName = student["secondName"] + " " + student["firstName"] + " " + student["lastName"];
    tr.innerHTML = `
        <td>${i}</td>
        <td>${fullName}</td>
        <td>${student["sex"]}</td>
        <td>${student["status"]}</td>
        <td>${student["financeType"]}</td>
    `;
    return tr;
}

function renderTable(students){

    reset()
    let i = 1;
    students_list.innerHTML = `
    <tr>
            <th id="id">#</th>
            <th id="name">ФИО</span></th>
            <th id="sex">Пол</th>
            <th id="status">Статус</th>
            <th id="finance">Тип финансирования</th>
            <th id="course">Курс</th>
    </tr>`;
    for (let student of students) {
        students_list.appendChild(generateTableRow(i++,student))
    }
}

function generateTableRow(i,student) {
    const tr = document.createElement("tr");
    const fullName = student["secondName"] + " " + student["firstName"] + " " + student["lastName"];
    tr.innerHTML = `
        <td>${i}</td>
        <td>${fullName}</td>
        <td>${student["sex"]}</td>
        <td>${student["status"]}</td>
        <td>${student["financeType"]}</td>
        <td>${student["course"]}</td>
    `;
    return tr;
}




function reset(){
    error_field.innerHTML = "";
    general_info.innerHTML = "";
    students_list.innerHTML = "";
}

async function fetchData(url){
    const response = await fetch(url)
    return await response.json();
}