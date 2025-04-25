import express, { Request, Response } from 'express'

const app = express()
const PORT = 3000

app.get('/', (_req: Request, res: Response) => {
  res.send('Hello gesss!')
})

app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`)
})
