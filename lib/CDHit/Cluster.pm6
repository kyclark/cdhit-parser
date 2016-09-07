grammar CDHit::Cluster {
    token TOP {
        <record>*
    }
    token record {
        <cluster_id> <sequence>+
    }
    rule cluster_id {
        '>' \s* (\N+) \n
    }
    token sequence {
        (\N+) \n
    }
}
