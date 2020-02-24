git add .

echo 'Enter the commit message:'
read com

git commit -m "$com"

echo 'Enter the name of the branch:'
read branch

git push origin $branch

read
