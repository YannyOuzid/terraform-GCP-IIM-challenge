const { BigQuery } = require('@google-cloud/bigquery')
let bigquery = new BigQuery({projectId: 'vigilant-signer-385612'});
exports.httpServer = async function httpServer(req, res) {
    const rows = [
      {name: 'Tom', age: 30},
      {name: 'Jane', age: 32},
    ];

    try {
        await bigquery
        .dataset("rendu_dataset")
        .table("rendu_table")
        .insert(rows);
        res.status(200).send(rows);
    } catch(e) {
        res.status(500).send(e)
    }

   
};