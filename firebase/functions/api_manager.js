const axios = require("axios").default;
const qs = require("qs");

/// Start synergy Group Code

const synergyGroup = {
  baseUrl: "http://217.160.213.124:8089",
  headers: { "Content-Type": `application/json` },
};

async function _loginCall(context, ffVariables) {
  var email = ffVariables["email"];
  var password = ffVariables["password"];

  var url = `${synergyGroup.baseUrl}/user/login`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = `
{
  "email": "${email}",
  "password": "${password}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}

async function _getFinanceACCCall(context, ffVariables) {
  var url = `${synergyGroup.baseUrl}/finance/allacc`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _getFinanceCotisationCall(context, ffVariables) {
  var url = `${synergyGroup.baseUrl}/finance/allcotisation`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _getFinanceBusinessCall(context, ffVariables) {
  var url = `${synergyGroup.baseUrl}/finance/allbuss`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _getFinanceDepenseInterneCall(context, ffVariables) {
  var url = `${synergyGroup.baseUrl}/finance/alldi`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _getAllGeneralInfoCall(context, ffVariables) {
  var userId = ffVariables["userId"];

  var url = `${synergyGroup.baseUrl}/finance/allfinanceinfos/${userId}`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _getAllAccompagnementCall(context, ffVariables) {
  var url = `${synergyGroup.baseUrl}/accompagnement/all`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _createAccompagnementCall(context, ffVariables) {
  var amount = ffVariables["amount"];
  var status = ffVariables["status"];
  var startAt = ffVariables["startAt"];
  var linkContrat = ffVariables["linkContrat"];
  var accompagnementUserName = ffVariables["accompagnementUserName"];
  var accompagnementLastName = ffVariables["accompagnementLastName"];
  var accompagnementProjectName = ffVariables["accompagnementProjectName"];
  var paymentDate = ffVariables["paymentDate"];
  var endAt = ffVariables["endAt"];

  var url = `${synergyGroup.baseUrl}/accompagnement/create`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = `
{
  "amount": ${amount},
  "status": "${status}",
  "startAt": "${startAt}",
  "linkContrat": "${linkContrat}",
  "accompagnementUserName": "${accompagnementUserName}",
  "accompagnementLastName": "${accompagnementLastName}",
  "accompagnementProjectName": "${accompagnementProjectName}",
  "paymentDate": "${paymentDate}",
  "endAt": "${endAt}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}

async function _updateAccompagnementCall(context, ffVariables) {
  var accIds = ffVariables["accIds"];
  var amount = ffVariables["amount"];
  var status = ffVariables["status"];
  var paymentDate = ffVariables["paymentDate"];
  var startAt = ffVariables["startAt"];
  var endAt = ffVariables["endAt"];
  var linkContrat = ffVariables["linkContrat"];
  var accompagnementLastName = ffVariables["accompagnementLastName"];
  var accompagnementUserName = ffVariables["accompagnementUserName"];
  var accompagnementProjectName = ffVariables["accompagnementProjectName"];
  var satisfactionClient = ffVariables["satisfactionClient"];

  var url = `${synergyGroup.baseUrl}/accompagnement/update/${accIds}`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = `
{
  "amount": ${amount},
  "status": "${status}",
  "paymentDate": "${paymentDate}",
  "startAt": "${startAt}",
  "endAt": "${endAt}",
  "linkContrat": "${linkContrat}",
  "accompagnementUserName": "${accompagnementLastName}",
  "accompagnementLastName": "${accompagnementUserName}",
  "accompagnementProjectName": "${accompagnementProjectName}",
  "satisfactionClient": "${satisfactionClient}"
}`;

  return makeApiRequest({
    method: "put",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}

async function _getcotisationbyuserIdsCall(context, ffVariables) {
  var userId = ffVariables["userId"];

  var url = `${synergyGroup.baseUrl}/finance/getbyuser/${userId}`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _getAllDrivesLinkCall(context, ffVariables) {
  var url = `${synergyGroup.baseUrl}/drives`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _createDriveCall(context, ffVariables) {
  var addAt = ffVariables["addAt"];
  var link = ffVariables["link"];
  var addedBy = ffVariables["addedBy"];
  var name = ffVariables["name"];

  var url = `${synergyGroup.baseUrl}/drives`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = `
{
  "addAt": "${addAt}",
  "link": "${link}",
  "addedBy": "${addedBy}",
  "name": "${name}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}

async function _updateDriveCall(context, ffVariables) {
  var addAt = ffVariables["addAt"];
  var link = ffVariables["link"];
  var addedBy = ffVariables["addedBy"];
  var name = ffVariables["name"];
  var id = ffVariables["id"];

  var url = `${synergyGroup.baseUrl}/drives/${id}`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = `
{
  "addAt": "${addAt}",
  "link": "${link}",
  "addedBy": "${addedBy}",
  "name": "${name}"
}`;

  return makeApiRequest({
    method: "put",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}

async function _deleteDriveCall(context, ffVariables) {
  var id = ffVariables["id"];

  var url = `${synergyGroup.baseUrl}/drives/${id}`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "delete",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _deleteSanctionsCall(context, ffVariables) {
  var id = ffVariables["id"];

  var url = `${synergyGroup.baseUrl}/sanctions/${id}`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "delete",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _getAllSanctionsCall(context, ffVariables) {
  var url = `${synergyGroup.baseUrl}/sanctions`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _getAllSanctionsforUSERCall(context, ffVariables) {
  var userid = ffVariables["userid"];

  var url = `${synergyGroup.baseUrl}/sanctions/user/${userid}`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _createSanctionsCall(context, ffVariables) {
  var userId = ffVariables["userId"];
  var point = ffVariables["point"];
  var titre = ffVariables["titre"];
  var at = ffVariables["at"];

  var url = `${synergyGroup.baseUrl}/sanctions`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = `
{
  "user": {
    "id": "${userId}"
  },
  "points": "${point}",
  "titre": "${titre}",
  "at": "${at}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}

async function _updatesanctionsCall(context, ffVariables) {
  var sanctionid = ffVariables["sanctionid"];
  var point = ffVariables["point"];
  var titre = ffVariables["titre"];
  var at = ffVariables["at"];

  var url = `${synergyGroup.baseUrl}/sanctions/${sanctionid}`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = `
{
  "points": "${point}",
  "titre": "${titre}",
  "at": "${at}"
}`;

  return makeApiRequest({
    method: "put",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}

async function _sendRappelleCotisationCall(context, ffVariables) {
  var url = `${synergyGroup.baseUrl}/user/sendrapelcotisation`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _allFinanceTableInfoCall(context, ffVariables) {
  var url = `${synergyGroup.baseUrl}/finance/allFinanceTableInfo`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _deleteFinanceByIDCall(context, ffVariables) {
  var id = ffVariables["id"];

  var url = `${synergyGroup.baseUrl}/finance/${id}`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "delete",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _createFinanceCall(context, ffVariables) {
  var userId = ffVariables["userId"];
  var amount = ffVariables["amount"];
  var comment = ffVariables["comment"];
  var financeType = ffVariables["financeType"];

  var url = `${synergyGroup.baseUrl}/finance/create`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = `
{
  "userId": "${userId}",
  "amount": "${amount}",
  "comment": "${comment}",
  "financeType": "${financeType}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}

async function _getAllInterneUsersCall(context, ffVariables) {
  var url = `${synergyGroup.baseUrl}/user/allusers/intern`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
  });
}

async function _contactusCall(context, ffVariables) {
  var mail = ffVariables["mail"];
  var desc = ffVariables["desc"];
  var name = ffVariables["name"];

  var url = `${synergyGroup.baseUrl}/user/contactus`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = `
{
  "name": "${name}",
  "desc": "${desc}",
  "email": "${mail}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
  });
}

/// End synergy Group Code

/// Helper functions to route to the appropriate API Call.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {
    LoginCall: _loginCall,
    GetFinanceACCCall: _getFinanceACCCall,
    GetFinanceCotisationCall: _getFinanceCotisationCall,
    GetFinanceBusinessCall: _getFinanceBusinessCall,
    GetFinanceDepenseInterneCall: _getFinanceDepenseInterneCall,
    GetAllGeneralInfoCall: _getAllGeneralInfoCall,
    GetAllAccompagnementCall: _getAllAccompagnementCall,
    CreateAccompagnementCall: _createAccompagnementCall,
    UpdateAccompagnementCall: _updateAccompagnementCall,
    GetcotisationbyuserIdsCall: _getcotisationbyuserIdsCall,
    GetAllDrivesLinkCall: _getAllDrivesLinkCall,
    CreateDriveCall: _createDriveCall,
    UpdateDriveCall: _updateDriveCall,
    DeleteDriveCall: _deleteDriveCall,
    DeleteSanctionsCall: _deleteSanctionsCall,
    GetAllSanctionsCall: _getAllSanctionsCall,
    GetAllSanctionsforUSERCall: _getAllSanctionsforUSERCall,
    CreateSanctionsCall: _createSanctionsCall,
    UpdatesanctionsCall: _updatesanctionsCall,
    SendRappelleCotisationCall: _sendRappelleCotisationCall,
    AllFinanceTableInfoCall: _allFinanceTableInfoCall,
    DeleteFinanceByIDCall: _deleteFinanceByIDCall,
    CreateFinanceCall: _createFinanceCall,
    GetAllInterneUsersCall: _getAllInterneUsersCall,
    ContactusCall: _contactusCall,
  };

  if (!(callName in callMap)) {
    return {
      statusCode: 400,
      error: `API Call "${callName}" not defined as private API.`,
    };
  }

  var apiCall = callMap[callName];
  var response = await apiCall(context, variables);
  return response;
}

async function makeApiRequest({
  method,
  url,
  headers,
  params,
  body,
  returnBody,
}) {
  return axios
    .request({
      method: method,
      url: url,
      headers: headers,
      params: params,
      ...(body && { data: body }),
    })
    .then((response) => {
      return {
        statusCode: response.status,
        headers: response.headers,
        ...(returnBody && { body: response.data }),
      };
    })
    .catch(function (error) {
      return {
        statusCode: error.response.status,
        headers: error.response.headers,
        ...(returnBody && { body: error.response.data }),
        error: error.message,
      };
    });
}

const _unauthenticatedResponse = {
  statusCode: 401,
  headers: {},
  error: "API call requires authentication",
};

function createBody({ headers, params, body, bodyType }) {
  switch (bodyType) {
    case "JSON":
      headers["Content-Type"] = "application/json";
      return body;
    case "TEXT":
      headers["Content-Type"] = "text/plain";
      return body;
    case "X_WWW_FORM_URL_ENCODED":
      headers["Content-Type"] = "application/x-www-form-urlencoded";
      return qs.stringify(params);
  }
}

module.exports = { makeApiCall };
