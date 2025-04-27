import express, { Request, Response } from 'express'
import dotenv from 'dotenv'

dotenv.config()

const app = express()
const PORT = process.env.PORT || 3000

app.get('/', (_req: Request, res: Response) => {
  res.send('Hello tyyhuhushd asdasasdasdasdd gessssssss!')
})

app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`)
})
