# Contribute

1. **Fork the Repository**
   - Go to `https://github.com/ducchung2444/datn.git`.
   - Click "Fork" (top right) to create your own copy (`github.com/YOUR_USERNAME/datn`).

2. **Clone Your Fork**
```sh
git clone git@github.com:YOUR_USERNAME/datn.git
cd datn
```

3. **Add Upstream Remote**
```sh
git remote add upstream git@github.com:ducchung2444/datn.git
```

4. **Create Feature Branch**
```sh
git checkout master
git pull upstream master
git checkout -b feature-branch
```

5. **Make Changes**
   - Edit files as needed.

6. **Stage Changes**
```bash
git add .
```

7. **Commit Changes (Single Commit)**
```bash
git commit -m "Add feature description"
```

8. **Check Commit Count**
```bash
git log master..feature-branch
```
   - Should show only 1 commit. If more, squash them:
```bash
git reset --soft master
git commit -m "Add feature description"
```

9. **Push to Your Fork**
```bash
git push origin feature-branch
```

10. **Create Pull Request**
    - Go to `github.com/YOUR_USERNAME/datn`.
    - Click "Compare & pull request" (should appear after push).
    - Set base: `ducchung2444/datn:master` and head: `YOUR_USERNAME/datn:feature-branch`.
    - Add title and description.
    - Click "Create pull request".

Done. Repeat for each feature, starting from step 4.

# Run

```sh
$ docker-compose -f docker-compose.dev.yml up --build frontend
```
