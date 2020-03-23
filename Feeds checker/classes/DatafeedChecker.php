<?php

class DatafeedChecker {
    protected $feeds = [];
    
    public function loadFeeds()
    {
        $xml = simplexml_load_file('xml/productfeed.xml') or die('Error: Cannot create object');
        $xml2 = simplexml_load_file('xml/productfeed (1).xml') or die('Error: Cannot create object');

        foreach($xml->children() as $product) {
            $id = $product->xpath('/products/product[1]/ID');
            $name = $product->xpath('/products/product[1]/name');
            $ean = $product->xpath('/products/product[1]/properties/property[@name="EAN"]');

            if($modified >= $lastUpdatedDate) {
                $feeds[] = $product;
            }
        }

        foreach($xml2->children() as $product2) {
            $name2 = $product2->xpath('/products/product[1]/name');
            $ean2 = $product2->xpath('/products/product[1]/properties/property[@name="EAN"]');

            if($modified >= $lastUpdatedDate) {
                $feeds[] = $product;
            }
        }

        echo '<pre>';
        var_dump($id);
        // echo '<hr>';
        // var_dump($product2);
        // exit;

        $this->feeds = $name . ', ' . $ean;
        // $this->getUpdatedFeeds($feeds);
    }

    public function getUpdatedFeeds()
    {
        return $this->feeds;
    }

    public function compareFeeds()
    {

    }

}