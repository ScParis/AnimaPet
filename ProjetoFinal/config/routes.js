const express = require('express')
const router = express.Router();
const controller = require('./veterinario')

router.post('/veterinario', controller.post);
router.put('/veterinario/:id', controller.putId);
router.delete('/veterinario/:id', controller.deleteId);
router.get('/veterinario/:id', controller.getId);
router.get('/veterinario', controller.get_all);

module.exports = router;