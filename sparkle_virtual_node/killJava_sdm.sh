for i in 1 2 3 4 4 5 6 7 8
do

ssh -i ~/my.key mdc-ch$i-cust4 << EOF
         sudo sh;
         cd /var/tmp/spark2.0hpcplatform
        ./killJava.sh
EOF

done



