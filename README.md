## Parks Lookup

#### by _**(Evgeny Zbirun)**_

#### The application let users to work with API which has state and park of the state. User can save a state and a park that the state has. The API can look for the park based of the state.



#### the project link to github: https://github.com/evegyzbirun/Parks-Lookup1

## Technologies Used:
* VS code
* Git console
* Ruby on Rails
* psql
* pg Admin



## Setup instructions

1. clone with github link.
2. open with Visual Studio Code.
3. run(bundle)
4. run (pg_ctl start) for the Postgres server
4. make sure you have psql database up(rake/rails db:setup) run (rake db:seed)
5. run rails s to get live server run
6. can check API calls (http://127.0.0.1:3000/api/v1/parks?state=Oregon)

## API endpoints

<table>
    <thead>
      <tr>
        <th>what it does</th>
        <th>method</th>
        <th>url</th>
        <th>params</th>
      </tr>
    </thead>
    <tbody>
        <tr>
            <td>Return all parks with states</td>
            <td>GET</td>
            <td><code>localhost:3000/api/v1/parks</code></td>
            <td><code></code></td>
        </tr>
        <tr>
            <td>Return a specific park</td>
            <td>GET</td>
            <td><code>localhost:3000api/v1/parks/:id</code></td>
            <td><code></code></td>
        </tr>
         <tr>
            <td>Search for park</td>
            <td>GET</td>
            <td><code>localhost:3000/api/v1/parks?state=</code></td>
            <td><code></code>state</td>
        </tr>
         <tr>
            <td>Create a park</td>
            <td>POST</td>
            <td><code>localhost:3000/api/v1/parks</code></td>
            <td><code></code>state, park</td>
        </tr>
         <tr>
            <td>Update a park</td>
            <td>PATCH</td>
            <td><code>localhost:3000/api/v1/parks/:id</code></td>
            <td><code></code>state, park</td>
        </tr>
         <tr>
            <td>DeleteE a park</td>
            <td>DELETE</td>
            <td><code>localhost:3000/api/v1/parks/:id</code></td>
            <td><code></code></td>
        </tr>
    </tbody>
  </table>

## Known bugs
 non

## License

Copyright <2022> Evgeny Zbirun

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.