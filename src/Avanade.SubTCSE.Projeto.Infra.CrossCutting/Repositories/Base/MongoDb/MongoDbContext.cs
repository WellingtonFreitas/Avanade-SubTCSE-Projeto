using Avanade.SubTCSE.Projeto.Domain.Base.Repository.MongoDb;
using MongoDB.Driver;

namespace Avanade.SubTCSE.Projeto.Infra.Data.Repositories.Base.MongoDb
{
    public class MongoDbContext : IMongoDBContext
    {
        public IMongoCollection<TEntity> GetCollection<TEntity>(string collection)
        {
            throw new System.NotImplementedException();
        }
    }
}
