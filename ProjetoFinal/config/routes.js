const express = require('express')
const router = express.Router();
const controller = require('./veterinario')

router.post('/veterinario', controller.post);
router.delete('/veterinario/:id', controller.deleteId);
router.get('/veterinario/:id', controller.getId);
router.get('/veterinario', controller.get_all);

module.exports = router;