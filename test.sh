modified_files=$(git status | grep "modified:" | awk '{print $2}')          

if [ ${#modified_files[@]} -gt 0 ];
          then
              for file in $modified_files
              do

                echo "git diff $file"
                git diff $file

              done
          fi

