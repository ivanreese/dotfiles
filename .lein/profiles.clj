{:user {:plugins [[lein-autoexpect "1.9.0"]
                  [lein-expectations "0.0.8"]
                  [lein-pprint "1.1.2"]
                  [lein-ancient "0.6.10"]
                  [lein-plz "0.4.0-SNAPSHOT" :exclusions [[rewrite-clj] [ancient-clj]]]
                  [lein-kibit "0.1.2"]]
        :dependencies [[slamhound "1.5.5"]]
        :aliases {"slamhound" ["run" "-m" "slam.hound"]}}}
