const get_all = ((req, res) => {
  res.send(Veterinario)
})

const post = ((req, res) => {
  const veterinario = req.body
  const primeiro_id = Veterinario ?
    Math.max.apply(
      null,
      Veterinario.map(veterinarioIterator => veterinarioIterator.id)
    ) + 1 :
    1
  veterinario.id = primeiro_id
  Veterinario.push(veterinario)

  res.status(201).send(veterinario)
})

const putId = ((req, res) => {
  const veterinarioId = +res.params['id']
  const veterinario = res.body

  const index = Veterinario.findIndex(veterinarioIterator => veterinarioIterator.id === veterinarioId)
  Veterinario[index] = veterinario

  res.status(200).send(veterinario)
})

const getId = ((req, res) => {
  const veterinarioId = +req.params['id']

  res.status(200).send(Veterinario.find(veterinarioIterator => veterinarioIterator.id === veterinarioId))
})

const deleteId = ((req, res) => {
  const veterinarioId = +req.params['id']
  Veterinario = Veterinario.filter(veterinarioIterator => veterinarioIterator.id !== veterinarioId)
  res.status(204).send({})
})

module.exports = {
  get_all,
  post,
  putId,
  getId,
  deleteId
};

var Veterinario = [{
    id: 1,
    nome: 'jaozinho',
    email: 'joaozinho@wimail.com',
    celular: '51925654898'
  },
  {
    id: 2,
    nome: 'irineu',
    email: 'irineu@wimail.com',
    celular: '51975754797'
  },
  {
    id: 3,
    nome: 'josnel',
    email: 'josnel@wimail.com',
    celular: '51924644848'
  },
  {
    id: 4,
    nome: 'jossinel',
    email: 'jossinel@wimail.com',
    celular: '51924254898'
  }
]