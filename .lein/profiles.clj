{:user {:plugins [[lein-ancient "0.6.10"]
                  [lein-autoexpect "1.9.0"]
                  [lein-count "1.0.3"]
                  [lein-expectations "0.0.8"]
                  [lein-kibit "0.1.2"]
                  [lein-plz "0.4.0-SNAPSHOT" :exclusions [[rewrite-clj] [ancient-clj]]]
                  [lein-pprint "1.1.2"]]
        :dependencies [[slamhound "1.5.5"]]
        :aliases {"slamhound" ["run" "-m" "slam.hound"]}}}
