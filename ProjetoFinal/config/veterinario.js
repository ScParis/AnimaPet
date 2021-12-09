const get_all = ((request, response) => {
    response.send(Veterinario)
  })
  
  const post = ((request, response) => {
    const veterinario = request.body
    const primeiro_id = Veterinario
      ? Math.max.apply(
        null,
        Veterinario.map(veterinarioIterator => veterinarioIterator.id)
      ) + 1
      : 1
      veterinario.id = primeiro_id
    Veterinario.push(veterinario)
  
    response.status(201).send(veterinario)
  })
  
  const putId = ((request, response) => {
    const veterinarioId = +request.params['id']
    const veterinario = request.body
  
    const index = Veterinario.findIndex(veterinarioIterator => veterinarioIterator.id === veterinarioId)
    Veterinario[index] = veterinario
  
    response.status(200).send(veterinario)
  })
  
  const getId = ((request, response) => {
    const veterinarioId = +request.params['id']
  
    response.status(200).send(Veterinario.find(veterinarioIterator => veterinarioIterator.id === veterinarioId))
  })
  
    const deleteId = ((request, response) => {
    const veterinarioId = +request.params['id']
    Veterinario = Veterinario.filter(veterinarioIterator => veterinarioIterator.id !== veterinarioId)
    response.status(204).send({})
  })
  
  module.exports = { get_all, post, putId, getId, deleteId };
  
  var Veterinario = [
    {
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
    }
  ]