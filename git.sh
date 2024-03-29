#####Git global setup####
git config --global user.name "Айнур Гарипов"
git config --global user.email "kuyan911@gmail.com"

####Create a new repository####
git clone git@gitlab.com:kuyan911/test.git
cd test
git switch -c main
touch README.md
git add README.md
git commit -m "add README"
git push -u origin main

#####Push an existing folder####
cd existing_folder
git init --initial-branch=main
git remote add origin git@gitlab.com:kuyan911/test.git
git add .
git commit -m "Initial commit"
git push -u origin main

####Push an existing Git repository###
cd existing_repo
git remote rename origin old-origin
git remote add origin git@gitlab.com:kuyan911/test.git
git push -u origin --all
git push -u origin --tags


############
git init .              # Можно  git init etc\myproject 
git add .               # Команда git add добавляет содержимое рабочей директории в индекс (staging area) для последующего коммита
git add <file> <file>   
git add -p <file>       # -p - паршел т.е. частичное добавление в индекс, потом необходимо выбрать ключ s для разбивки кода на мелкие частицы
                          т.е. допустим написали код из нескольких строк, добавили только первые 2 строк.
git status

.gitignore              # Если создать такой файл и заполнить, то файлы прописанные в .gitignore не будут коммитится

git rm                  # Удаляет из диска          
git rm --cached         # Если мы добавляем в .gitignore и файл отслеживает (скорее всего файл был создан до .gitignore) то можно удаляет файл из индекса, но оставляет его в рабочем каталоге. Это означает для Git, что вы больше не хотите отслеживать файл.
git mv                  # Переименовать файл

git show                # Последний коомит просмотр
git log                 # Все изменения
git log -1              # Покажет последнее изменение
git log -1 -p           # Более детальный отчет 

git diff <commit1> <commit2>    # Разница. git log посмотреть commit(хэши)
git diff HEAD~1 HEAD~2
git diff HEAD~1                  # Последние изменения, HEAD~2 предпоследний
git diff master..develep        # Сравнить разные ветки


git checkout -- test.html   # Вернуть предыдущий версии, можно сделать до git add
git reset HEAD test.html    # Можно вернуть из индекса, т.е. можно еще раз git add

git commit --amend          # Изменить последний commit, редактировать название и т.д.

git checkout <commit>       # Возвращат на тот коммит который указалм хэш, вернутся на последний коммит git checkout master  
git revert 4501d17c         # Удаляется конкретный коммит
git reset --mixed           # Откат на этот хэш, а все позже этого очищает из индекса
git reset --hard 4501d17c   # Откатывает до этого хэша, а все позже этого очищает/удаляется
git reset --soft HEAD~3     # Стирает названии коммита до указанного шага 3, но сам файл остается последним, так можно очистить названия коммита не изменя файл 

git clone http:\\...          # Клонировать из облака
git push                      # Отправить на сайт
git push -u origin master     # Отправить ветку 
git push origin --delete dev  # Удалить ветку dev из облако
git pull                      # Получить только измененные коммиты, если после push были изменения в облаке, слияние допустим master и origin/master
git fetch                     # Скачает из облака в локальный ПК, но в отличи pull не сливает одинаковые ветки т.е. можно сравнить между собой две одинаковые ветки git diff master..origin/master

git checkout -b dev         # Создает ветку dev и переходит на эту ветку
git checkout dev            # Переход на ветку dev

git remote -V               # Показывает репозитории с какими работал, удаленные

git branch -l               # Показывает какие ветви есть
git branch dev              # Создать новую ветку
git branch -m dev develop   # Переименовать dev на develop
git branch -d develop       # Удалить ветку develop


git merge <branch>          # Сливает в текущую ветку другую ветку <branch>, в случае конфликта предлагает чей вариант принять.
git merge --abort           # Отменить последний автоматический merge

git blame src/poetry.txt    # Показывает кто и когда менял строки в коде










