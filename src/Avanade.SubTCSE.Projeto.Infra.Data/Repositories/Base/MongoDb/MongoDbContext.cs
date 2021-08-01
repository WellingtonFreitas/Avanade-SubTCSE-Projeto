﻿using Avanade.SubTCSE.Projeto.Domain.Base.Repository.MongoDb;
using MongoDB.Driver;

namespace Avanade.SubTCSE.Projeto.Infra.Data.Repositories.Base.MongoDb
{
    public class MongoDbContext : IMongoDBContext
    {
        private readonly IMongoDatabase _mongoDatabase;

        public MongoDbContext()
        {
            MongoClientSettings mongoClientSettings = MongoClientSettings
                .FromUrl(new MongoUrl("mongodb://root:Abcd12345@127.0.0.1:27017/?authSource=admin"));

            mongoClientSettings.SslSettings =
                new SslSettings()
                {
                    EnabledSslProtocols = System.Security.Authentication.SslProtocols.Tls12
                };

            MongoClient mongoClient = new MongoClient(settings: mongoClientSettings);

            _mongoDatabase = mongoClient.GetDatabase("fullstack");
        }

        public IMongoCollection<TEntity> GetCollection<TEntity>(string collection)
        {
            return _mongoDatabase.GetCollection<TEntity>(name: collection);
        }
    }
}
